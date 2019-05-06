Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFF214514
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 09:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kl6kzHam/9NcJnaEzL9tFbKvtYMXNfzLrq9dn6y8QJY=; b=aeqri/xa+QmxWE
	WVhDnjeAHKDpQqlr512VgwgNIUI3pyqGQB2bq1ew9Gf75JZXtUtxIKkzR5Mx5Kfz80IhGKFVjDTZZ
	JlIE4/TvVvAxgkyH9PTy7PyhBUTrbaMljnw/32ymHOKCVewTEcq1pQkVkHeNuNv9cIQ7z/yschbH8
	nqa8XlgWFdClJJ3u4hw54c0j/OjAsWcxlejmnoUG/cd1t3RjtGvUYRxuUfiJaua9UwqAWBlOSdi3Z
	ifJsyXjD24VW9bUEYLR1u/plSJA5deSYv4gIYb3uxKHoXxy8X8BOUuOWwep8hZjUq5SbBPDtIoHsI
	x9pgdnLvvihc62n9FRQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXz8-0006J1-5h; Mon, 06 May 2019 07:24:26 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXz4-0006IR-AA
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 07:24:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 00:24:20 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga002.jf.intel.com with ESMTP; 06 May 2019 00:24:15 -0700
Subject: Re: [PATCH] mmc: block: Fix memory leak in blk-mq when cleaning up
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20190503233526.226272-1-dianders@chromium.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <c7dde396-6536-bd9b-95af-9ed57fbebc86@intel.com>
Date: Mon, 6 May 2019 10:22:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503233526.226272-1-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_002422_365428_0EA67A0C 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 drinkcat@chromium.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, groeck@chromium.org, Omar Sandoval <osandov@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 4/05/19 2:35 AM, Douglas Anderson wrote:
> If I run the following on rk3288-veyron-minnie (a 2GB machine)
> 
>   cd /sys/bus/platform/drivers/dwmmc_rockchip
>   for i in $(seq 1 3000); do
>     echo "========================" $i
>     echo ff0f0000.dwmmc > unbind
>     sleep .5
>     echo ff0f0000.dwmmc > bind
>     while true; do
>       if [ -e /dev/mmcblk2 ]; then
>         break;
>       fi
>       sleep .1
>     done
>   done
> 
> Then I start OOMing somewhere between iteration 200 and 250.  Using
> kmemleak, I see reports like:
> 
> unreferenced object 0xe39c5580 (size 64):
>   comm "kworker/1:0", pid 17, jiffies 4294821091 (age 96.952s)
>   hex dump (first 32 bytes):
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>   backtrace:
>     [<ad19d10a>] __kmalloc+0x1ec/0x2dc
>     [<a28614c3>] blk_mq_alloc_tag_set+0x27c/0x2bc
>     [<0955ae01>] mmc_init_queue+0xa8/0x2a8
>     [<5102b986>] mmc_blk_alloc_req+0xf8/0x2d4
>     [<f1c2214f>] mmc_blk_probe+0x4a8/0x6c0
>     [<0dfdd9d5>] mmc_bus_probe+0x24/0x28
> 
> It's pretty clear that we're missing a call to blk_mq_free_tag_set().
> Let's add it.
> 
> Fixes: 81196976ed94 ("mmc: block: Add blk-mq support")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Same as:

	https://lore.kernel.org/lkml/20190502190714.181664-1-rrangel@chromium.org/

> ---
> 
>  drivers/mmc/core/queue.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
> index 7c364a9c4eeb..09071e13282e 100644
> --- a/drivers/mmc/core/queue.c
> +++ b/drivers/mmc/core/queue.c
> @@ -480,6 +480,8 @@ void mmc_cleanup_queue(struct mmc_queue *mq)
>  	 */
>  	flush_work(&mq->complete_work);
>  
> +	blk_mq_free_tag_set(&mq->tag_set);
> +
>  	mq->card = NULL;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
