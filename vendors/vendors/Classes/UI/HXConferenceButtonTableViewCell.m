//
//  HXCOnferenceButtonTableViewCell.m
//  HXPhoneConference
//
//  Created by 景腾州 on 2022/2/17.
//

#import "HXConferenceButtonTableViewCell.h"
#import "Masonry.h"

@interface HXConferenceButtonTableViewCell ()

@property (nonatomic, strong) UIButton *startConferenceBtn;
@property (nonatomic, strong) UIButton *createConferenceDocuBtn;
@property (nonatomic, strong) UIButton *joinConferenceBtn;
@property (nonatomic, strong) UIButton *transConferenceBtn;

@end

@implementation HXConferenceButtonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self configUI];
    }
    return self;
}

- (void)configUI {
    self.startConferenceBtn = [UIButton new];
    [self.startConferenceBtn setBackgroundColor:[UIColor blueColor]];
    [self.startConferenceBtn setTitle:@"发起电话会议" forState:UIControlStateNormal];
    [self.startConferenceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.startConferenceBtn sizeToFit];
    [self.contentView addSubview:self.startConferenceBtn];
    
    self.createConferenceDocuBtn = [UIButton new];
    [self.createConferenceDocuBtn setBackgroundColor:[UIColor blueColor]];
    [self.createConferenceDocuBtn setTitle:@"创建会议文档" forState:UIControlStateNormal];
    [self.createConferenceDocuBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.createConferenceDocuBtn sizeToFit];
    [self.contentView addSubview:self.createConferenceDocuBtn];
    
    self.joinConferenceBtn = [UIButton new];
    [self.joinConferenceBtn setBackgroundColor:[UIColor blueColor]];
    [self.joinConferenceBtn setTitle:@"加入电话会议" forState:UIControlStateNormal];
    [self.joinConferenceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.joinConferenceBtn sizeToFit];
    [self.contentView addSubview:self.joinConferenceBtn];
    
    self.transConferenceBtn = [UIButton new];
    [self.transConferenceBtn setBackgroundColor:[UIColor blueColor]];
    [self.transConferenceBtn setTitle:@"转至本机接听" forState:UIControlStateNormal];
    [self.transConferenceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.transConferenceBtn sizeToFit];
    [self.contentView addSubview:self.transConferenceBtn];
    
    [self.startConferenceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_offset(20.0);
    }];
    
    [self.createConferenceDocuBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_offset(20.0);
            make.right.mas_offset(-20.0);
        make.width.mas_equalTo(self.startConferenceBtn);
        make.left.mas_equalTo(self.startConferenceBtn.mas_right).mas_offset(20.0);
    }];
    
    [self.joinConferenceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(20.0);
        make.right.mas_offset(-20.0);
        make.top.mas_equalTo(self.startConferenceBtn.mas_bottom).mas_offset(20.0);
    }];
    
    [self.transConferenceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_offset(20.0);
        make.right.mas_offset(-20.0);
        make.top.mas_equalTo(self.joinConferenceBtn.mas_bottom).mas_offset(20.0);
        make.bottom.mas_offset(-20.0);
    }];
}

@end
