//
//  main.m
//  theBeautiOfCycle
//
//  Created by qianfeng on 15-7-19.
//  Copyright (c) 2015年 LZ. All rights reserved.
//

#import <Foundation/Foundation.h>

static int step = 0;
static int maxStep = 0;
static int n = 0;
void right(int **p, int x,int y);

void up(int **p, int x,int y)
{
    for (int i = n; i>0; i--) {
        p[--x][y]  = ++step;
        
    }
    if (step>= maxStep) {
        return;
    }
    y++;
    right(p, x, y);
    
    
}


void left(int **p, int x,int y)
{
    
    for (int i = n; i>0; i--) {
        p[x][--y]  = ++step;
        
    }
    if (step>= maxStep) {
        return;
    }
    n--;
    up(p, x, y);
    
}
void down(int **p, int x,int y)
{
    
    for (int i = n; i>0; i--) {
        p[++x][y]  = ++step;
        
    }
    if (step>= maxStep) {
        return;
    }
    
    left(p, x, y);
    
}


void right(int **p, int x,int y)
{
    
    
    for (int i = n; i>0; i--) {
        p[x][y++]  = ++step;
        
    }
    y--;
    n--;
    if (step>= maxStep) {
        return;
    }
    down(p, x, y);
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        int **p;
        scanf("%d",&n);
        int count = n;
        p = (int ** )malloc(sizeof(int *)*n);
        for (int i= 0; i<n; i++) {
            
            p[i] = (int *)malloc(sizeof(int )*n);
            
        }
        
        maxStep = n*n;
        right(p, 0, 0);
        for (int i= 0; i<count; i++) {
            
            for (int j= 0; j<count; j++){
                printf("%d    ",p[i][j]);
            }
            
            printf("\n");
        }
        
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}

