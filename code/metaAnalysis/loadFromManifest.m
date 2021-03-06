function [var, keyFile] = loadFromManifest(manifest, varName)
var = []; keyFile = [];

% manifest itself is empty
if isempty(manifest), return; end;

if strcmp(varName,'songStruct')
    [~,keyEntry]=min(cellfun('length',{manifest.originalFile}));
    keyFile = manifest(keyEntry).originalFile;
    var = loadSpikeAudioStruct(keyFile);
    return;
end
% todo: pick the last updated rather than last listed, more robust
maniIndex = find(strcmp(varName,{manifest.name}), 1, 'last');
if ~isempty(maniIndex)
    manifestEntry = manifest(maniIndex);
    keyFile = manifestEntry.originalFile;
    if true % added by TK for mac computer 
        manifestEntry.originalFile = strrep(manifestEntry.originalFile,'\','/');
    end
    WS = load(manifestEntry.originalFile, manifestEntry.name);
    var = WS.(varName);
end
end