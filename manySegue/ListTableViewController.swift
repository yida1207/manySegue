//
//  listTableViewController.swift
//  manySegue
//
//  Created by Yida on 2020/9/8.
//  Copyright © 2020 Yida. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    let info = [        "以你為名的青春":"成年後的徐永心（李墨之飾），偶遇高中同學鄭大威，兩人久違的相遇，勾起了那酸甜交織的校園回憶。時光回到十幾年前，當時的徐永心是個認真唸書的好學生，因為一次筆記本的意外，她的人生跟同班同學杜亞修（連晨翔飾）碰撞在一起，隨著深入的了解，她發現外表像不良學生的亞修，其實有著一顆善良又熱情的心，而透過亞修，原本只知道唸書的永心，也結交了許許多多的好友，陽光的運動男孩鄭大威、美麗冷傲的女神高雨瑄、還有溫柔斯文的鄭大文，這些人相伴著永心走過整個青春時期，一起面對成長的不安與疑惑，也一起高談年少的夢想與情懷，一起歡笑、一起流淚，永遠不會害怕跌倒，因為知道，總有人在一旁支持你，鼓勵你重新站起，奔向未來。",
    "浪花男神":"網劇《浪花男神》集青春、偶像、愛情、勵志、奇幻等多重熱點於一體，講述了旅遊專欄作家沈沐欣童年時代在海中看見男性魚尾化身成人，從而堅信魅族人的存在。為了追尋魅族人的蹤跡，沈沐欣回到老家星悅灣，加入了度假村救生隊。                                                                                          在救生隊里，沈沐欣遇到因車禍受傷離開體壇的救生隊員的安希達，並懷疑安希達正是魅族人，鬧出諸多笑話。但在日復一日的相處中，二人終於解開誤會，成為戀人。安希達也逐漸走出內心的陰霾，成為新一代救生隊長，並與沈沐欣一起揭開了魅族人的神秘面紗……",

        "必勝大丈夫":"《必勝大丈夫》（英語：My Hero, My Daddy），2019年三立華人電視劇八點檔系列第二十部作品。由蔡振南、楊麗音、周曉涵、周孝安、林昀希、邱昊奇、許騰介、陳天仁領銜主演。故事描述一家三個姊妹及爸爸互相依靠又彼此牽掛的家庭生活。於2018年5月29日定裝，7月31日開拍，8月8日開鏡，三立都會台於2019年1月8日首播，3月11日全劇殺青。3月12日播出完結篇，全劇共計41集。為三立都會台繼《真情之家》後，時隔395天後再度製播的平日八點檔戲劇。",

        "腦波小姐":"《腦波小姐》（英語：The Haunted Heart），原劇名《鬼氣少女，完勝！》，2019年台灣偶像劇。由歐陽妮妮、張書豪、蔡黃汝、張捷領銜主演，麗象影業有限公司及透納廣播公司共同製作。本劇曾獲中華民國文化部101年度電視節目劇本創作獎第一名，及106年度旗艦型連續劇補助3000萬、5.1聲道補助800萬元。於2018年10月3日開鏡，11月14日舉行卡司發布記者會，2019年4月5日殺青。首播時間目前未知。",
        
        "女孩要幹嘛":
        """
        女孩要幹嘛（The girls say）為台灣 Vidol 旗下自製劇影音平台，
        於2018年12月22日開播，內容以自製網路戲劇為主。
        目前已有《女孩要幹嘛 》、《女孩要幹嘛 S2》、《家教哥哥來我家》三部作品於網路播映。
        新劇《限時同居侯八天》02/05 開鏡，密集拍攝中。
        ⠀⠀
        -
        ⠀⠀
        ❤️ 女孩要幹嘛 第一季 (劇終)
        曖昧已久的倆人，在女孩鼓起勇氣告白後，終於在一起了。
        隨著戀情進展，突破了重重關卡的倆人，卻在女孩收到國外大學錄取通知後變了調。
        在愛情與未來之間，他們將如何選擇？
        ➢ https://pse.is/QNUKA
        ⠀⠀
        ❤️ 女孩要幹嘛 第二季 (劇終)
        五個人，就有五種不同的喜歡。
        遠距離戀愛中的少瑜，重新將重心放回校園生活，
        學弟妹間青澀的感情已經讓他夠頭痛了，朋友的姐姐竟還偷偷喜歡他？
        某天，少瑜看到了女友在國外疑似劈腿的照片....
        ➢ https://pse.is/NKPPG"
        """
                        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> UIViewController? {
        
        let controller = DetailViewController(coder: coder)
        if segueIdentifier == "以你為名的青春"{
            controller?.detail = Detail(imageName: "以你為名的青春", info: info["以你為名的青春"]!)
        }else if segueIdentifier == "浪花男神"{
            controller?.detail = Detail(imageName: "浪花男神", info: info["浪花男神"]!)
        }else if segueIdentifier == "必勝大丈夫"{
            controller?.detail = Detail(imageName: "必勝大丈夫", info: info["必勝大丈夫"]!)
        }else if segueIdentifier == "腦波小姐"{
            controller?.detail = Detail(imageName: "腦波小姐", info: info["腦波小姐"]!)
        }else if segueIdentifier == "女孩要幹嘛"{
            controller?.detail = Detail(imageName: "女孩要幹嘛", info: info["女孩要幹嘛"]!)
        }
        
        return controller
    }
    
        // MARK: - Table view data source

        //繼承自己訂的controller 這兩段要拿掉，不然會沒有section跟cell
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    //
    //    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        // #warning Incomplete implementation, return the number of rows
    //        return 0
    //    }

        /*
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

            // Configure the cell...

            return cell
        }
        */

        /*
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the specified item to be editable.
            return true
        }
        */

        /*
        // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                // Delete the row from the data source
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
        */

        /*
        // Override to support rearranging the table view.
        override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        }
        */

        /*
        // Override to support conditional rearranging of the table view.
        override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the item to be re-orderable.
            return true
        }
        */

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

}
    
