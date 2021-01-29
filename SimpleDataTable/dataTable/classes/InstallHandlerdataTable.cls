public inherited sharing class InstallHandlerdataTable implements System.InstallHandler {
    public void onInstall(InstallContext context) {
        Version p = context.previousVersion();
        String s = 'Test App: Data Table@0.1.0-21';
        MailUtilsdataTable.send(
            context.installerId(),
            'Test App: Data Table version (' + s + ') installed on ' + context.organizationId(),
            context.organizationId() + ' ' + context.installerId() + '<br/>' + context.isUpgrade() + ' ' 
            + context.isPush() + ( p != null ? ' previous version: ' + p.major() + ' ' + p.minor() + ' ' + p.patch() 
            : ' no previous version; fresh install')
        );
        
    } 
}
