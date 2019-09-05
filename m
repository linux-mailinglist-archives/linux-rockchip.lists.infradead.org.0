Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8067AA97AB
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 02:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aZ0Xj7QKJ5CxXMnMbGKnrV6+Qj0XOVoxtd/spFG7S/g=; b=UsKbiVfI1eNCQlfMDJZbJLUEc
	NaZXzG0iRFyHB/trHRrozufATsUQ1Bk0vetrCPFVdqc6RtwEdy2ZPnAdTO7oCVVZq++AMsQpjDMCE
	7vwc827Y0Vcgngdkq7ftJAd7YwCkuaxeihcYBRZfDuZ/UdMfrRwzE/9dgyxL5F1UuaqtO3k35aqYU
	FcOCdDx8tX3fYLJDTgxrzanaptE4JT3CJ6MCo4rI6ZilyeXjphE0OMubjSo+TmZrJLDNuqo9jictr
	P3V27/RJtYg/4RiwuL659sPHfgniuBFXhiafpZvbuKxwDHfSBp4M1FjwxZPWkmdv5/9Wt1S+Zckoq
	sD/I7e6kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fn6-0008So-8c; Thu, 05 Sep 2019 00:38:24 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fn2-0008S2-Kl
 for linux-rockchip@lists.infradead.org; Thu, 05 Sep 2019 00:38:22 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.161])
 by lucky1.263xmail.com (Postfix) with ESMTP id DDB3E69ADA;
 Thu,  5 Sep 2019 08:38:10 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21150T140136998237952S1567643887723782_; 
 Thu, 05 Sep 2019 08:38:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <17808e1317399cd22e2311d389b14c6e>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_mmc=3a_dw=5fmmc-rockchip=3a_Using_180_s?=
 =?UTF-8?B?YW1wbGUgcGhhc2UgaWYgYWxsIHBoYXNlcyB3b3Jr44CQ6K+35rOo5oSP77yM6YKu?=
 =?UTF-8?B?5Lu255SxbGludXgtbW1jLW93bmVyQHZnZXIua2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
To: Doug Anderson <dianders@chromium.org>
References: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
 <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <f461c5ba-4798-8177-618a-4b864c24e5b3@rock-chips.com>
Date: Thu, 5 Sep 2019 08:38:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_173820_996701_3CDDD824 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 shawn.lin@rock-chips.com, Linux MMC List <linux-mmc@vger.kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On 2019/9/4 23:44, Doug Anderson wrote:
> Hi,
> 
> On Tue, Sep 3, 2019 at 7:28 PM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> default_sample_phase is used to make sure the cards are enumurated
>> properly and will be set to 0 if not assigned. However, the sample
>> phase should depends on the tuned phase if running higher clock rate.
>> If all phases work but default_sample_phase isn't assigned, driver
>> set sample phase to 0 for this case, which isn't the best choice,
>> because we always expect to set phase to the middle of window. To
>> solve the following continually issues we have seen in the test, we
>> need set phase to the more stable one, 180, if all phases work.
>>
>> mmcblk1: error -84 transferring data, sector 1735064, nr 8, cmd
>> response 0x900, card status 0xb00
>> mmcblk1: retrying using single block read
>> dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
>> mmcblk1: retrying because a re-tune was needed
>>
>> .....
>>
>> mmcblk1: error -84 transferring data, sector 1728672, nr 248, cmd
>> response 0x900, card status 0xb00
>> mmcblk1: retrying using single block read
>> dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
>>
>>   drivers/mmc/host/dw_mmc-rockchip.c | 5 ++---
>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
>> index d4d0213..9ef9723 100644
>> --- a/drivers/mmc/host/dw_mmc-rockchip.c
>> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
>> @@ -209,9 +209,8 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
>>          }
>>
>>          if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
>> -               clk_set_phase(priv->sample_clk, priv->default_sample_phase);
>> -               dev_info(host->dev, "All phases work, using default phase %d.",
>> -                        priv->default_sample_phase);
>> +               clk_set_phase(priv->sample_clk, 180);
>> +               dev_info(host->dev, "All phases work, using phase 180.");
> 
> This violates what is documented in the device tree bindings, which says:
> 

Thanks for catching this.

> * rockchip,default-sample-phase: The default phase to set ciu-sample at
>    probing, low speeds or in case where all phases work at tuning time.
>    If not specified 0 deg will be used.
> 
> Specifically:
> * You don't use "default-sample-phase" at all when all phases pass.
> * You don't default to 0 if not specified.
> 
> Personally I think we could change the bindings to say: "If not
> specified 180 deg will be used" and then change the code to do the

That sounds sane to me. I will respin v2 to fix the bingdings and
change the code.

> same.  If we wanted to keep the "stable ABI" that is device tree we
> could also just do the "180 default" for new SoCs and then manually
> add the device tree fragment to all old dts files.
> >
> -Doug
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
