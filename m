Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7F1365E
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3N5JnCzo5TAacrqD+HRkhfBJn+b+LyibyBuFcgVw+UM=; b=KPSBElXzxGmkPj
	VbcCxC3zetSpCyoKHB+d1ViJhu8dEE8mjm8nRUozqfBkXHMqVbMRJlRnKSp5iqI3Vx7ceT2EI0SxD
	hIGIQ7qRcfXB5JsFChJGEcvXhRq/ugxhGSrpG+5AgDoikpU9DIgBGNto3O1Nt/STL2xSG2imcdDR+
	kdxuJ2FEVsnNE/ffxDAbGAAxvZQvf9nkQ5MNSSifzJJ6bmEaTmK49hlCyA31pmXTASdbfIQt0YsKf
	dxY6l+gpVbrzPMy+bKa5ynMaxte0siQHPfYOmpve+GBvl0FlaxVPsyJvCknKq/BTv2ktbx6kenPKA
	q9Bm03XlirVui+PUD0ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhz1-0007jv-Ew; Fri, 03 May 2019 23:52:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhyw-0007ix-0Z
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:52:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 10so3658137pfo.5
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zFYO46dMP3SAqBcqLg5CJF+YJTDQUoBvDpuV2RH5L8k=;
 b=gz6GXQvIhiRKo7gHSNL7icfBycNvIyLAkP/uuPyKgv3b8qvGaYPvg0CZiS/1UiF+K4
 +CiZIZbL04xpT0Cdcdm7jmAdxkRSx2gmsqSqNN/aenbrHMFrvIQVe3DSj3oay0qgIK9Z
 XzclcQjv6TE9dRNeLfh33aOEGRNRfIJqObuJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zFYO46dMP3SAqBcqLg5CJF+YJTDQUoBvDpuV2RH5L8k=;
 b=pkeFVbI5NKw/cVmCt0g1Bkss4HtZD/dU6ipxHGu7M3muihno5VKDY7iWQsQ2Xz8XN9
 hckct1mx7RRwwXNAEyAGM7+XDUY8kmEw8dQUfAsLvHhlo4kcJI5Ilu3vIV/yw/wqltxS
 gzYZa2dSVjF+sOZA2TLPrJZDkgySOvf6Aw1JaPk7StzSsggkm5yMucNB0rwauSfVpb0I
 TJY8ILXq267dqWoYdxranrQLyfNBaCmwqU0fcbiBuBJ6YBAHIvBfyNmRSIsc7e8Jxbrv
 Yk4ySjprfxQpeUSa2w70Uxnow4Lvbec/XoMpG0kBjT9gdqPzViq3VV5TpHpNWO3PWf7M
 cdzQ==
X-Gm-Message-State: APjAAAVDprXrgE/iLnic0JxYsXalpGxmpAM0nyc/iXLJtBw3udRgUHm5
 Qo9U9qmhQTUX5dy8eUGWonLFdQ==
X-Google-Smtp-Source: APXvYqxWLkDJ2g1GBDJh6wJtE/dVgOii3cn8aUKEB3XBCyO9lNe+ybALhKiV+alJ0o+0S+nTV+jW8g==
X-Received: by 2002:a65:6688:: with SMTP id b8mr14057572pgw.81.1556927563905; 
 Fri, 03 May 2019 16:52:43 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id j12sm8848865pgg.79.2019.05.03.16.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 16:52:43 -0700 (PDT)
Date: Fri, 3 May 2019 16:52:42 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] mmc: block: Fix memory leak in blk-mq when cleaning up
Message-ID: <20190503235242.GC40515@google.com>
References: <20190503233526.226272-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503233526.226272-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165246_055223_3D144E87 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 drinkcat@chromium.org, linux-kernel@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Ming Lei <ming.lei@redhat.com>,
 linux-rockchip@lists.infradead.org, Hannes Reinecke <hare@suse.com>,
 groeck@chromium.org, Omar Sandoval <osandov@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:35:26PM -0700, Douglas Anderson wrote:
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

FWIW:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
