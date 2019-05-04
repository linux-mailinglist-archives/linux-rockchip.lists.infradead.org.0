Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F38613687
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 02:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5sItLGzSoLSoVUcZk6GaSMsDjOtjvpTA/UoiC1SUys=; b=WqA5ajbqU1mWwV
	fOTfQGcohaMgo573B+D6ZDxsADDRm2mxg0bUZikPoZ99Er1RP/qGhqfDcOrVIsAqBgaojhFOM5M5c
	Ee8bQNtL5YqR3XYFUEUW4SkTwaOmRlh9HMMQUr4PpjMZBERWkkZjYHw5qNqooD/4f4IZvZEskAPjz
	1KB9E18yTqAM87pF2F1qZR28gfFf5oZTTQSuAaptmxrFvDIT9dXJofZNld9FP5Q7n4cSW9MfjRqtP
	dQDD6/Uin5oy19d6ZX/9/jPw3kRIxYJZVDdbRStaMMdMFIkfhv9nCgSGVnUctHhwPcW93ift3/F9t
	5oTynX/Xonq+IF9xuxNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiQD-0002iv-C1; Sat, 04 May 2019 00:20:57 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiQA-0002iA-BU
 for linux-rockchip@lists.infradead.org; Sat, 04 May 2019 00:20:55 +0000
Received: by mail-yw1-xc44.google.com with SMTP id w18so5669998ywa.12
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 17:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8u1LS+6EqPde0F+xVFBLFStY6rhD6RydqN/kGWzKQf0=;
 b=YU9EPwrhmmXadyeroskbASOXBwkuSiVpsxM5r1tpL1zoFYO1+XqiRm2a8HecWWAg3I
 bEct98nox4aXDJUtojb/NYqyUZ2z2prwd7BJf3DJH33w4na4cFh85CYofQWnvVRx+Iod
 0rLrYWhcO5VjwnuJCMLlhljGSuT1p4svq95TJ9mHiumO2IlzByTI5loZX+kgdexEsUZ6
 Dpsmpd0UL9DTn2EBBY3dOd8p4w/8MwdS5mRUtrtfueN/d/lbdfgRE4wgyu+1nwXUFcyu
 4HSdcjoayXzP2/PvhBYDs9pMFZYAncBgEli0wIDFBEltwRQFZyNSN4a4tbidhjH9MA79
 YjIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8u1LS+6EqPde0F+xVFBLFStY6rhD6RydqN/kGWzKQf0=;
 b=WLkH+XMc35EY+LPGTxJWGbsAP+JdtbO5E/UqV3m0qx7XR69VH6X2WjdfVnDe1Wjt75
 IswftKdHnvmtB71B1ltWPcqE2dXdeGly9PfRJPPiB6VceSr/Nn7DrftHnLMfAgKoOLo9
 HxK4GbbFSd4jVVjD07BmO/wyXioAvM4EPAX+uIOdjkGH9BSbrFliWnvDcYje0PqPUXDt
 3Djr+vwYUDOLcR5SZ/jrQ8QU++HXdk49FogjpcIieSu/5Sj/5ffrLl0EQTLLCFXEsyNO
 7c6b0Pzq3hxNXV2hQrKzQePmUC5s9gZl7JtkpMF3dv1MF0LzJQ731k/DxtE1YdodVS1m
 Fldw==
X-Gm-Message-State: APjAAAXEmkKtYyPYtSpEFj0N8VJMCsHrALaFnv7fU3VwMydNVsImFQrJ
 0cwkEWPw7kmQtPRdsllOBOswRpNVrt66saIYmXp2ag==
X-Google-Smtp-Source: APXvYqxZ0MJdyv3RZ5UYVNcpudMiD1zPtDVQBqLz9kFWv+/GAVLknMFUquuDlVBi73oSm4fBY/9sovp3rLwLQ8Vtbnc=
X-Received: by 2002:a81:5a0b:: with SMTP id o11mr9041234ywb.444.1556929251923; 
 Fri, 03 May 2019 17:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190503233526.226272-1-dianders@chromium.org>
In-Reply-To: <20190503233526.226272-1-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 3 May 2019 17:20:41 -0700
Message-ID: <CABXOdTdsB82EGn_9ZTQCS2TfcNSR6Mq5J9WjGYbdrKOPsd-jzg@mail.gmail.com>
Subject: Re: [PATCH] mmc: block: Fix memory leak in blk-mq when cleaning up
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_172054_428113_224B25AF 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
 Nicolas Boichat <drinkcat@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Ming Lei <ming.lei@redhat.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Hannes Reinecke <hare@suse.com>,
 Guenter Roeck <groeck@chromium.org>, Omar Sandoval <osandov@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 4:35 PM Douglas Anderson <dianders@chromium.org> wrote:
>
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

Nice one.

Reviewed-by: Guenter Roeck <groeck@chromium.org>

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
>          */
>         flush_work(&mq->complete_work);
>
> +       blk_mq_free_tag_set(&mq->tag_set);
> +
>         mq->card = NULL;
>  }
>
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
