//
//  ViewController.m
//  TableViewCell_Resize

#import "ViewController.h"
#import "SubTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *tempStr = [NSString stringWithFormat:@"jdnfjffdfssrsreshjdsrserskdsrs erssfseaafshfgjfgutdfsfseavxbkfhefq zdfxfxdfgdgdgresfsfsdf sdfsdfsfsfsdfsdfsdfwqfsgdhdhd dfjglsdk fjgldfgldng kjdfg kdjfg ,adsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkjadsfsajfhkj,hasdfjhdsjkfh,hdsufhajkdsfhk"];
    arrayObj = [[tempStr componentsSeparatedByString: @","] mutableCopy];
    NSLog(@"%@",arrayObj);
    tableObj.estimatedRowHeight = 100.0;
    tableObj.rowHeight = UITableViewAutomaticDimension;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return arrayObj.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomCell";
    SubTableViewCell *cell = [tableView
                                 dequeueReusableCellWithIdentifier:CellIdentifier
                                 forIndexPath:indexPath];
    
    // Configure the cell...
    
    long row = [indexPath row];
    
    cell.titleLbl.text = arrayObj[row];
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
