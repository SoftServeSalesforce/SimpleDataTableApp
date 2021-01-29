public inherited sharing class UninstallHandlersimpleDataTable implements System.UninstallHandler {
    public void onUninstall(UninstallContext context) {
        String s = 'Test App: Simple Data Table@0.1.0-20';
        
        MailUtilssimpleDataTable.send(
            context.uninstallerId(),
            'Test App: Simple Data Table version (' + s + ') uninstalled on ' + context.organizationId(),
            context.organizationId() + ' ' + context.uninstallerId()
        );
        
    }
}
