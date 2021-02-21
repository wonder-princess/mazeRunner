    var mapString :String = ""
    let arrey :[String] = ["#"," ","#","#","#","#","#","#"," ","#","#"]
    var place : String = ""

    let mapData:[[String]] = 
    [["#","S","#","#","#","#","#","#","#","#","#"],
    ["#"," ","#","#","#","#","#","#"," ","#","#"],
    ["#"," "," "," "," ","#","#"," "," ","#","#"],
    ["#"," ","#","#"," "," "," "," ","#","#","#"],
    ["#","#","#","#"," ","#","#","#","#","#","#"],
    ["#"," "," "," "," ","#"," "," "," ","#","#"],
    ["#"," ","#","#","#","#"," ","#"," ","#","#"],
    ["#"," ","#","#","#","#"," ","# ","","#","#"],
    ["#"," "," "," "," "," "," ","#"," ","#","#"],
    ["#","#","#","#","#","#","#","#","G","#","#"]]
    
/*    
    var mapMake :String = ""
   
    for mapArray in mapData {
        for mapstr in mapArray {
            mapMake += readMapData(mapstr)
        }
        mapMake += "\n"
    }

    func readMapData(_ mapStr :String) -> String
    {
        if mapStr == "#"{
            return "0"
        }else if mapStr == " "{
            return "1"
        }else if mapStr == "S"{
            return "S"
        }else if mapStr == "G"{
            return "G"
        }else{
            return "2"
        }
    }
*/    
    
    //*** x = 0~9, y = 0~10 ***/
    var runner = Runner(x :1, y :5)
    print(mapData[9][10])


    place = "移動前:x" + runner.x.description + "/y" + runner.y.description
    print(place)
    
    moveRunner()

    func moveRunner()
    {
//        moveUp()
//        moveDown()
        moveRight()
//        moveLeft()
    }
    
    func moveUp()
    {
        if checkMove(runner, "up"){
        runner.y -= 1
        }
    }
    func moveDown()
    {
        if checkMove(runner, "down"){
        runner.y += 1
        }
    }
    func moveRight()
    {
        if checkMove(runner, "right"){
        runner.x += 1
        }
    }
    func moveLeft()
    {
        if checkMove(runner, "left"){
        runner.x -= 1
        }
    }
    
    func checkMove (_ runner :Runner, _ destination :String) -> Bool
    {
        var x :Int = runner.x
        var y :Int = runner.y
        
        if destination == "up"{
            if y <= 0{
                print("マップ外")
                return false
            }
            return checkSpece(x, y-1)
            
        }else if destination == "down"{
            print(mapData.count)
            print(y)
            if y >= mapData.count-1{
                print("マップ外")
                return false
            }
            return checkSpece(x, y+1)
            
        }else if destination == "right"{
            print(mapData[y].count)
            print(x)
            if x >= mapData[y].count-1{
                print("マップ外")                
                return false
            }
            return checkSpece(x+1, y)
            
        }else if destination == "left"{
            if x <= 0 {
                print("マップ外")
                return false
            }
            return checkSpece(x-1, y)
            
        }else{
            return false
        }
    }
    
    func checkSpece (_ x :Int, _ y :Int) -> Bool
    {
        print(mapData[x][y] == " ")
        print(mapData[x][y])
        return mapData[x][y] == " "
    }
    
    class Runner
    {
        var x :Int
        var y :Int
        
        init(x: Int, y: Int) {
            self.x = x
            self.y = y
        }
    }
    
//    print(mapMake)
    
//    print(mapData[0][1])
    
    place = "移動後:x" + runner.x.description + "/y" + runner.y.description
    print(place)

