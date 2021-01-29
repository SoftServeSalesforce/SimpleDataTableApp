public inherited sharing class InstallHandlerbaseSetup implements System.InstallHandler {
    public void onInstall(InstallContext context) {
        Version p = context.previousVersion();
        String s = 'Test App: Base Setup@0.1.0-19';
        MailUtilsbaseSetup.send(
            context.installerId(),
            'Test App: Base Setup version (' + s + ') installed on ' + context.organizationId(),
            context.organizationId() + ' ' + context.installerId() + '<br/>' + context.isUpgrade() + ' ' 
            + context.isPush() + ( p != null ? ' previous version: ' + p.major() + ' ' + p.minor() + ' ' + p.patch() 
            : ' no previous version; fresh install')
        );
        Setup.default();
    } 
}
