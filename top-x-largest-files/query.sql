select 
    xyf_urls.full_path,
    xyf_urls.file_id,
    xyf_urls.file_name,
    xyf_files.file_size,
    xyf_files.mime_type,
    xyf_files.creation_date,
    xyf_files.created_by
from xyf_urls
    inner join xyf_files
    on xyf_urls.file_id = xyf_files.file_id
where file_type_code = {file_type_code}
order by file_size desc
limit {limit}