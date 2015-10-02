def logger descriptionOfBlock, &block
  puts "開始 " + descriptionOfBlock
  puts descriptionOfBlock + ' 終了、返り値は' + block.call.to_s
end

logger '外ブロック' do
  logger 'ある小さなブロック' do
    3 + 2
  end

  logger 'もうひとつのブロック' do
    "I like Thai food!"
  end
  false
end
