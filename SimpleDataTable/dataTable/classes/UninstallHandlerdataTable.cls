public inherited sharing class UninstallHandlerdataTable implements System.UninstallHandler {
    public void onUninstall(UninstallContext context) {
        String s = 'Test App: Data Table@0.1.0-21';
        
        MailUtilsdataTable.send(
            context.uninstallerId(),
            'Test App: Data Table version (' + s + ') uninstalled on ' + context.organizationId(),
            context.organizationId() + ' ' + context.uninstallerId()
        );
        
    }
}
