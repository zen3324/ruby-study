$nestingDepth = -1

def logger descriptionOfBlock, &block
  $nestingDepth += 1
  puts ("  " * $nestingDepth) + "開始 " + descriptionOfBlock
  puts ("  " * $nestingDepth) + descriptionOfBlock + ' 終了、返り値は' + block.call.to_s
  $nestingDepth -= 1
end

logger '外ブロック' do
  logger 'ある小さなブロック' do
    logger 'ちっちゃなブロック' do
      "lots of love"
    end
    40 + 2
  end

  logger 'もうひとつのブロック' do
    "I love Indian food!"
  end
  true
end
