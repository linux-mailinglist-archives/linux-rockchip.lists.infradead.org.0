Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3EB13997
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 13:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ+OouHFC37rjLM0ES4dxiyKxRwh/WiuXrV4U3neWo4=; b=gOJFmF480e1Xlq
	jIR9OT2DDqTSPxj6UP0DWzbhAglZsaTu4dngjhgWh4fA7Kxn9RMrM+Y8q51Ez7a6mjscPt2QKLS2x
	OK8/R/MDoymn3M87IF60BbU3K9bg+KhfE76oi/C9R6z41C2HO9+S3b7lrPCbmE6NMhdVoPAPFyryp
	uxEzHk8aOtDQnzlMw5ANjQkv9IXc2H9Iai6ffA6Qtl9Di/B3ZJ+L3cl73Vo5S26QOkZkF8bA20vBg
	NLQDTunIviC3/3zeQxF6PXQJcmqcHQon7Xwl12btL8eyD3HjIWNw3UD5Gv5zlyoa0b4OxX5HERxpD
	owMIHiBFLQmoOxQFWdeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMtIM-00054P-4N; Sat, 04 May 2019 11:57:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMtII-00053Y-Dm
 for linux-rockchip@lists.infradead.org; Sat, 04 May 2019 11:57:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id n134so4327482lfn.11
 for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2019 04:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hiyRbo1iY86Hzj/M9NZN8C2mes9fddgxbrKTHjW5zE0=;
 b=W0szkNx1iiyxaYo8r6H+St058PnaetwCUo33soDQrFpJNn2nwOQZViAv0yG6Jp8b9u
 WF5/8XtnKzKxUtXTnumQKyxDDpBg6G2CGj4R1OwPPplj5AALmSzM0uGmB1wKsvxJ4Jvo
 MJu7NY1TsgYZ1GMYFSObLA6vNZME2YaOUZUG8MiYoeYSiLLQfSiKn95Misgn7KsYDOt4
 81MMkMF4RsA0BGrpniw7QgTuLH1u9wA901MM/Dms2rGRvKDWMZDxY/H5fymZVHtm1Br4
 p4RVdIx2XBmJd03DXbZepO8zjHgxyrIvDVijCZun7O0h3yBHGh3xHil2eyswqh56PAqR
 TSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hiyRbo1iY86Hzj/M9NZN8C2mes9fddgxbrKTHjW5zE0=;
 b=FHPl9XFe8jv1yyCb4CK5loWqczg0sAD2TRvfz8Ij4YjxbMmIvpGQ1v7QCbNtrx91aP
 e+qVvC9WU5EeaTkUS9gM0t5I8b6g3M5o3+pgTF+MHKxpD1ag29CUecGvReZGFHtGN6iY
 oecDukoacRagiCS938fTHN/tLchMdvLzVA6UDkSXPl7gm3O0H4rB9bKrbCW4v7A0k4JO
 6RnF/G6jax5JCswK9u6Fv4HMF0ONrmhQkbhXbJbp4kiDYl2uJjOJMW8DiitWWWKK88rU
 HCdJsz6OUIQEiz1bhZKF3KT9ipDYJGJ2TP3ZQvTh0CmGvRN3SPqr9PxYLbbz11th18E3
 iJnw==
X-Gm-Message-State: APjAAAW6DY9GnN2zOsPfRrXvFxQXedJufPuLvTppdyawFHn/EpVM8XTQ
 QYQlXpqwG4L82A2uM6D5Kkj24VjOuPjZmQ3QESGzpw==
X-Google-Smtp-Source: APXvYqxBCbcM80t0WxfKywlZ3nTrDenba3/3wHSY5uq0o0NQn4HQaeszpvwzuYZERdQCXLNLqfPGCxXO+VVUTUB/cBc=
X-Received: by 2002:a19:f001:: with SMTP id p1mr8317318lfc.27.1556971047580;
 Sat, 04 May 2019 04:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190503233526.226272-1-dianders@chromium.org>
In-Reply-To: <20190503233526.226272-1-dianders@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 4 May 2019 13:57:15 +0200
Message-ID: <CACRpkdagZCpFJmZ7+-DAQBD7mg5Zs4+mrT3uByXKoGYTS5yERg@mail.gmail.com>
Subject: Re: [PATCH] mmc: block: Fix memory leak in blk-mq when cleaning up
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_045730_496905_6FB0CF62 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drinkcat@chromium.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Ming Lei <ming.lei@redhat.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Hannes Reinecke <hare@suse.com>,
 groeck@chromium.org, Omar Sandoval <osandov@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, May 4, 2019 at 1:35 AM Douglas Anderson <dianders@chromium.org> wrote:

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

Looks correct to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
