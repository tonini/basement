require_relative 'foreman'

build "Array" do

  craft "#assoc" do
    nails = ["common", "duplex", "drywall", "spikes"]
    screws = ["wood", "metal", "masonry", "timber"]
    anchors = "flat"
    fasteners = [nails, screws, anchors]

    assert_equal fasteners.assoc("wood"), __
    assert_equal fasteners.assoc("flat"), __
  end

  craft "#at" do
    tools = ["saw", "hammer", "gripper"]

    assert_equal tools.at(1), __
    assert_equal tools.at(-1), __
  end

  craft "#clear" do
    materials = ["cement", "pebble", "tar"]

    assert_equal materials.clear, __
  end

  craft "#compact" do
    roofs = ["pitched roof", nil, "sheed roof", nil]

    assert_equal roofs.compact, __
  end

  craft "#concat and #+" do
    nails = ["common", "duplex"]
    screws = ["wood", "metal"]

    assert_equal nails.concat(["drywall", "spikes"]), __
    assert_equal screws + ["masonry"], __
  end

  craft "#delete" do
    workers = [ "allen", "sam", "hans", "davis"]

    assert_equal workers.delete("allen"), __
    assert_equal workers, __
    assert_equal workers.delete("jimmy"), __
    assert_equal workers.delete("harris") { "is not here!" }, __
    assert_equal workers.delete("tom") { |name| "#{name} is not here!" }, __
  end

  craft "#delete_at" do
    lunches = ["sandwich", "burger", "pasta"]

    assert_equal lunches.delete_at(1), __
    assert_equal lunches.delete_at(5), __
  end

  craft "#delete_if" do
    truck = ["full", "blank"]

    assert_equal truck.delete_if {|s| s == "full" }, __
    assert_equal truck, __
  end

  craft "#drop" do
    bricks = [1, 2, 3, 4, 5, 6, 7]

    assert_equal bricks.drop(2), __
  end

  craft "#drop_while" do
    sizes = [1, 2, 3, 4, 5, 6, 17, 18, 19]

    assert_equal sizes.drop_while {|s| s > 6 }, __
  end

  craft "#empty?" do
    boiler = []
    hole = [nil, nil]

    assert_equal boiler.empty?, __
    assert_equal hole.empty?, __
  end

  craft "#eql?" do
    tools = ["hammer", "axt"]
    toolbox = ["chisel", "screwdriver"]
    more_tools = ["hammer", "axt"]

    assert_equal tools.eql?(toolbox), __
    assert_equal tools.eql?(more_tools), __
  end

  craft "#fetch" do
    dimensions = [11, 22, 33, 44]

    assert_equal dimensions.fetch(0), __
    assert_equal dimensions.fetch(-2), __
    assert_equal dimensions.fetch(5, 'hello?'), __
    assert_equal dimensions.fetch(5) {|d| "#{d} index not exist!" }, __
    assert_raises __ do
      dimensions.fetch(18)
    end
  end

  craft "#fill" do
    screws = ["wood", "metal", "masonry", "timber"]

    assert_equal screws.fill("gone"), __
    assert_equal screws.fill("gone", 1, 2), __
    assert_equal screws.fill("gone", 0..2), __
    assert_equal screws.fill {|x| x * 2 }, __
    assert_equal screws.fill(-2) {|x| x * 2 }, __
  end

  craft "#index #find_index" do
    tools = ["borer", "grinder"]

    assert_equal tools.index("borer"), __
    assert_equal tools.index("sawing"), __
    assert_equal tools.index {|x| x == "grinder" }, __
  end

  craft "#first" do
    cars = ["digger", "crane", "truck", "van"]

    assert_equal cars.first, __
    assert_equal cars.first(2), __
  end

  craft "#flatten" do
    layers = [1, 2, 3, [1, 2, 3, [1, 2, 3]]]

    assert_equal layers.flatten, __
    assert_equal layers.flatten(1), __
  end

  craft "#include?" do
    colors = ["red", "blue", "green"]

    assert_equal a.include?("blue"), __
    assert_equal a.include?("yellow"), __
  end

  craft "#replace" do
    numbers = [1, 2, 3, 4, 5]

    assert_equal numbers.replace([77, 88, 99]), __
    assert_equal numbers, __
  end

  craft "#insert" do
    screws = ["wood", "metal", "masonry"]

    assert_equal screws.insert(1, "stone"), __
    assert_equal screws.insert(-3, "timber", "stainless"), __
  end

  craft "#join" do
    tools = ["to", "ol", "s"]

    assert_equal tools.join, __
    assert_equal tools.join("*"), __
  end

  craft "#keep_if" do
    lunches = ["sandwich", "burger", "pasta"]

    assert_equal lunches.keep_if {|l| l =~ /(urg)/ }, __
  end

  craft "#last" do
    cars = ["digger", "crane", "truck", "van"]

    assert_equal cars.last, __
    assert_equal cars.last(2), __
  end

  craft "#pop" do
    nails = ["common", "duplex", "drywall", "spikes"]

    assert_equal nails.pop, __
    assert_equal nails.pop(2), __
    assert_equal nails, __
  end

  craft "#push" do
    nails = ["common", "duplex"]

    assert_equal nails.push("drywall", "spikes"), __
  end

  craft "#rassoc" do
    workers = [[31, "allen"], [30, "sam"], [40, "hans"], [51, "davis"]]

    assert_equal workers.rassoc("sam"), __
    assert_equal workers.rassoc("tom"), __
  end

  craft "#reverse" do
    screws = ["wood", "metal", "masonry"]

    assert_equal screws.reverse, __
  end

  craft "#rotate" do
    numbers = [1, 2, 3, 4, 5, 6]

    assert_equal numbers.rotate, __
    assert_equal numbers.rotate(2), __
    assert_equal numbers.rotate(-1), __
  end

  craft "#select" do
    cars = ["digger", 22, "truck", "van", 33, 49]

    assert_equal cars.select {|c| c =~ /[aeiou]/}, __
  end

  craft "#shift" do
    materials = ["cement", "pebble", "tar", "wood"]

    assert_equal materials.shift, __
    assert_equal materials.shift(2), __
  end

  craft "#sort" do
    workers = ["tom", "cleve", "andrew", "billy"]

    assert_equal workers.sort, __
    assert_equal workers.sort { |x, y| x <=> y }, __
  end

  craft "#uniq" do
    screws = ["wood", "wood", "masonry", "masonry", "timber", "timber"]
    cars = ["1:truck", "1:digger", "2:van"]

    assert_equal screws.uniq, __
    assert_equal cars.uniq { |c| c[/^\d+/] }, __
  end

  craft "#unshift" do
    materials = ["cement", "pebble", "tar", "wood"]

    assert_equal materials.unshift("tar"), __
    assert_equal materials.unshift("77","grass"), __
  end

  craft "#values_at" do
    colors = ["red", "blue", "yellow", "gray", "cyan"]

    assert_equal colors.values_at(0, 2, 3), __
    assert_equal colors.values_at(-1, 3), __
    assert_equal colors.values_at(2..3, 0...7), __
    assert_equal colors.values_at(3), __
  end

end
