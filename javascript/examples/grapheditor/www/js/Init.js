// urlParams is null when used for embedding
window.urlParams = window.urlParams || {};

// Public global variables
window.MAX_REQUEST_SIZE = window.MAX_REQUEST_SIZE  || 10485760;
window.MAX_AREA = window.MAX_AREA || 15000 * 15000;

// P+Z: URLs for save and export
window.EXPORT_URL = window.EXPORT_URL || PZ.Sy.Std.Navigation.toAbsoluteUrl('~/{storagecollection}/{tenant}/{data}/{lcid}/BasePlugin/Diagram/ExportDiagram');
window.SAVE_URL = window.SAVE_URL || PZ.Sy.Std.Navigation.toAbsoluteUrl('~/{storagecollection}/{tenant}/{data}/{lcid}/BasePlugin/Diagram/SaveDiagramEditor');
window.OPEN_URL = window.OPEN_URL || '/open';
window.RESOURCES_PATH = window.RESOURCES_PATH || PZ.Sy.Std.Navigation.toAbsoluteUrl('~/{storagecollection}/{tenant}/{data}/{lcid}/Resources/DiagramEditorResources');;
window.RESOURCE_BASE = window.RESOURCE_BASE || window.RESOURCES_PATH + '/';
window.STENCIL_PATH = window.STENCIL_PATH || PZ.Sy.Std.Navigation.toAbsoluteUrl('~/Images/DiagramEditor');;
window.IMAGE_PATH = window.IMAGE_PATH || PZ.Sy.Std.Navigation.toAbsoluteUrl('~/Images/DiagramEditor');
window.STYLE_PATH = window.STYLE_PATH || 'styles';
window.CSS_PATH = window.CSS_PATH || 'styles';
window.OPEN_FORM = window.OPEN_FORM || 'open.html';

// Sets the base path, the UI language via URL param and configures the
// supported languages to avoid 404s. The loading of all core language
// resources is disabled as all required resources are in grapheditor.
// properties. Note that in this example the loading of two resource
// files (the special bundle and the default bundle) is disabled to
// save a GET request. This requires that all resources be present in
// each properties file since only one file is loaded.
window.mxLoadStylesheets = false;
window.mxBasePath = window.mxBasePath || '../../../src';
window.mxLanguage = window.mxLanguage || PZ.Sy.Std.Cultures.getByLcid(PZ.Sy.Std.Navigation.getRouteValue('lcid', 1033)).ISO2 || urlParams['lang'];
window.mxDefaultLanguage = "none";
window.mxImageBasePath = window.IMAGE_PATH;