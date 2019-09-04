Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF80A7C11
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 08:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6OsUalc87vRY8jelZXbr4hxh/DYse/hKIcI53jK4T9M=; b=FAFy6Nn21l9TqyS9v5bA+SK1J
	2iTb2AJiDi/tCjWottkB4t/JqaBWn7y3tKNWZQMPGC5YAu1c4eyIKTDp8zmkCQetD+8cnY3zHo6uM
	GiI0Vj4kj+XGtCpa+P4Rhhh1rK2bPKKG1GLsZx0J7Zrhz9zixQaD50WFYMHTha/b0mEQiT5wfo4e/
	ORTraoLGtJ1vrMlJ0DVP+J/c3JrNxck104BSRiMFpxVmyIw6NA4JEe7Tq/Kk2dvT8b4RddyvhIxOP
	h6Mb9PmqnlbgQzmZDosszUw8O6nxlSCVORneFl5wC+3ZpOMS+gVbPVD20aScnE9JNUIH0C/xYpy6+
	2AXYZLRVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PAn-0006xI-Kq; Wed, 04 Sep 2019 06:53:45 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PAi-0006tg-PX
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 06:53:42 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 22A8D3E4D4;
 Wed,  4 Sep 2019 14:53:32 +0800 (CST)
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
 P3793T140254004627200S1567580009523516_; 
 Wed, 04 Sep 2019 14:53:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5b2d73b1785b7caf807279e5fb39fd6a>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: dianders@chromium.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_mmc=3a_dw=5fmmc-rockchip=3a_Using_180_s?=
 =?UTF-8?B?YW1wbGUgcGhhc2UgaWYgYWxsIHBoYXNlcyB3b3Jr44CQ6K+35rOo5oSP77yM6YKu?=
 =?UTF-8?Q?=e4=bb=b6=e7=94=b1linux-rockchip-bounces+shawn=2elin=3drock-chips?=
 =?UTF-8?B?LmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFpmh2zcz7=zL77XGBHUhxcFquoMSiRHf8w3dnvwH50aYw@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <39217c20-5792-73da-958a-088aea519149@rock-chips.com>
Date: Wed, 4 Sep 2019 14:53:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpmh2zcz7=zL77XGBHUhxcFquoMSiRHf8w3dnvwH50aYw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_235341_198273_B404ADBC 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, shawn.lin@rock-chips.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019/9/4 14:32, Ulf Hansson wrote:
> On Wed, 4 Sep 2019 at 04:28, Shawn Lin <shawn.lin@rock-chips.com> wrote:
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
> 
> Is this ready to be tagged for stable, or think its better to get it
> tested a while and then send a backport to Greg etc instead?
> 

Thanks, Ulf. I would prefer to get it tested in -next and will send
backport patches to the revelent stable kernels.

> In any case, applied for next, thanks!
> 
> Kind regards
> Uffe
> 
> 
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
>>                  goto free;
>>          }
>>
>> --
>> 1.9.1
>>
>>
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
