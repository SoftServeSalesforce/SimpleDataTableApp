public inherited sharing class UninstallHandlerbaseSetup implements System.UninstallHandler {
    public void onUninstall(UninstallContext context) {
        String s = 'Test App: Base Setup@0.1.0-19';
        
        MailUtilsbaseSetup.send(
            context.uninstallerId(),
            'Test App: Base Setup version (' + s + ') uninstalled on ' + context.organizationId(),
            context.organizationId() + ' ' + context.uninstallerId()
        );
        
    }
}
