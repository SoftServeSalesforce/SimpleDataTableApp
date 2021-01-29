public inherited sharing class InstallHandlersimpleDataTable implements System.InstallHandler {
    public void onInstall(InstallContext context) {
        Version p = context.previousVersion();
        String s = 'Test App: Simple Data Table@0.1.0-20';
        MailUtilssimpleDataTable.send(
            context.installerId(),
            'Test App: Simple Data Table version (' + s + ') installed on ' + context.organizationId(),
            context.organizationId() + ' ' + context.installerId() + '<br/>' + context.isUpgrade() + ' ' 
            + context.isPush() + ( p != null ? ' previous version: ' + p.major() + ' ' + p.minor() + ' ' + p.patch() 
            : ' no previous version; fresh install')
        );
        
    } 
}
