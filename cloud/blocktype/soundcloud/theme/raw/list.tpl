{if $folders}
{foreach $folders folder}
<div class="folderdownload-item" title="{$folder.title}">
  <div class="fl"><img src="{$folder.iconsrc}" alt=""></div>
  <div style="margin-left: 30px;">
    <h4>{$folder.title|str_shorten_text:20}</h4>
    {if $folder.description}<p>{$folder.description}</p>{/if}
    <div class="description">{$folder.duration} | {$folder.ctime}
    | <a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/details.php?id={$folder.id}&type=folder&view={$viewid}">{str tag=Details section=artefact.file}</a>
    | <a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/preview.php?id={$folder.id}&type=folder" target="_blank">{str tag=preview section=artefact.cloud}</a></div>
  </div>
</div>
{/foreach}
{/if}

{if $files}
{foreach $files file}
<div class="filedownload-item" title="{$file.title}">
  <div class="fl">{if $file.type == 'file'}<a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/download.php?id={$file.id}" target="_blank"><img src="{$file.iconsrc}" alt=""></a>{else}<img src="{$file.iconsrc}" alt="">{/if}</div>
  <div style="margin-left: 30px;">
    <h4>{if $file.type == 'file'}<a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/download.php?id={$file.id}" target="_blank">{$file.title|str_shorten_text:20}</a>{else}{$file.title|str_shorten_text:20}{/if}</h4>
    {if $file.description}<p>{$file.description}</p>{/if}
    <div class="description">{$file.duration} | {$file.ctime}
    | <a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/details.php?id={$file.id}&type=file&view={$viewid}">{str tag=Details section=artefact.file}</a>
    | <a href="{$WWWROOT}artefact/cloud/blocktype/soundcloud/preview.php?id={$file.id}&type=file" target="_blank">{str tag=preview section=artefact.cloud}</a></div>
  </div>
</div>
{/foreach}
{/if}

