#import "ViewController.h"
#import "Datas.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Datas *goods1 = [Datas initWithName:@"薇恩" andicon:@"vn.png" anddees:@"让我们来猎杀那些陷入黑暗中的人吧。"];

    _arrayHeros = [[NSMutableArray alloc]initWithObjects:goods1, nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

#pragma mark 这一组里面有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayHeros.count;
}

#pragma mark 返回第indexPath这行对应的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    Datas *he = [_arrayHeros objectAtIndex:indexPath.row];
    cell.textLabel.text = he.name;  //设置名字
    cell.detailTextLabel.text = he.desc;  //设置描述
    cell.imageView.image =[UIImage imageNamed:he.icon]; //设置图片
    return cell;
}

#pragma mark - 代理方法
#pragma mark 返回indexPath这行cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
#pragma mark 选中一行响应事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}
@end
