Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C50213636
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yjZfJnNwv4U2oVkVi5mYgpEwFD0L2LjGmu2IG7EJrJY=; b=U7Ti6Ht8yspgcT
	bSDO0YH0HxzHft3HEy7zxnQUVC6UrHcWSGLZDGSbt91+rKEtWdaQIcq30B9dmkgxFFD2q2DCDV/Nt
	Q314k3kyGPqc7C8VzdkVBLsaIRk23THTma1gzktqN3GD+1MnimUcCdb64q0MlgeAEITdaoJJZW0Vc
	Fxft1FxFhAUmSGWq7AF0CXU7x6JOFCVzJ6h2qMqnMzrC7EznsxDiYUt7xhV/FshlxFhbMENjIkWs/
	i4GVWC/bfoVyglJReO4rCnDVfOnRKZN6VGCRoUrqMEBZjY+7T6GSSzIIr01gUAaMfA34Uu920atqo
	NBKV9K6aWwFvai+Z8Ehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhiV-0002IM-BT; Fri, 03 May 2019 23:35:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhiR-0002HI-VB
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:35:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id 188so3632218pfd.8
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SHEjHfO9A5bRiMAqWYWHqc/8OGhvcUxNJFwk8XrvHsE=;
 b=E1kHCtY3StjY2jL6mVYyFBDOHkYOyxkDZHKrjgcQsUNJy8dDwNhCXMPstgxWlAWDVu
 N6/tKl0/5fSaSVUZeI/AswN2edBTfVnN7rBh5z5LP395vsJXAlfWtuvsqNrYQVbSP7/9
 hwBMR6j63Xx/mEajgFYbn6QXfKqogcl8pxheQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SHEjHfO9A5bRiMAqWYWHqc/8OGhvcUxNJFwk8XrvHsE=;
 b=fh/th8NFa/WcOYplLdsUv+7wTVdM6khxxvYBgJDlNQ3I5GRNqnkVow9+ht3ECCS46t
 l2b7XXhX654mtW4uyJI6h4W3dFEbEVrx+YANwuLJM2PqUeuu6nz2Outxd1m+pOsXT59o
 Mq/+0KRU1vSaLYENBFijsVWig1Z8+kY39UmtTMBxxrkG3DdRPB+Xv9kjCC563EErmqal
 cFQGza5dxxu9p4X2xYUTvAO3MijwFyb5RYBZ5V1yDPl/BvTs8eWyNbVqlxsUixIARYQm
 HuAt1UQ76XICTbGWCDfeSlOVWVAdBzrETwEwUn3FbTH7i6CUlDiMDgyk33GlXnrotOJj
 bpZg==
X-Gm-Message-State: APjAAAX9h+KNTfc3fD8SsSKUPyleMfBNN7brhTmKXzlOvLGYr9BvTMKW
 noh8syltGPxSS3IbkcZAFwy1ig==
X-Google-Smtp-Source: APXvYqxSl2kbX2wBpR+4fMn6q0ci7jtMz8uiaw/Pxs3UtU6+iNJMRtgXKO7o7X0k+XZwbkDsvK4mwA==
X-Received: by 2002:a65:62d2:: with SMTP id m18mr14209583pgv.122.1556926540856; 
 Fri, 03 May 2019 16:35:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id l184sm7763304pfc.98.2019.05.03.16.35.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:35:39 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] mmc: block: Fix memory leak in blk-mq when cleaning up
Date: Fri,  3 May 2019 16:35:26 -0700
Message-Id: <20190503233526.226272-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_163544_033955_A38B4955 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 drinkcat@chromium.org, linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Ming Lei <ming.lei@redhat.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org, groeck@chromium.org,
 Omar Sandoval <osandov@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If I run the following on rk3288-veyron-minnie (a 2GB machine)

  cd /sys/bus/platform/drivers/dwmmc_rockchip
  for i in $(seq 1 3000); do
    echo "========================" $i
    echo ff0f0000.dwmmc > unbind
    sleep .5
    echo ff0f0000.dwmmc > bind
    while true; do
      if [ -e /dev/mmcblk2 ]; then
        break;
      fi
      sleep .1
    done
  done

Then I start OOMing somewhere between iteration 200 and 250.  Using
kmemleak, I see reports like:

unreferenced object 0xe39c5580 (size 64):
  comm "kworker/1:0", pid 17, jiffies 4294821091 (age 96.952s)
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<ad19d10a>] __kmalloc+0x1ec/0x2dc
    [<a28614c3>] blk_mq_alloc_tag_set+0x27c/0x2bc
    [<0955ae01>] mmc_init_queue+0xa8/0x2a8
    [<5102b986>] mmc_blk_alloc_req+0xf8/0x2d4
    [<f1c2214f>] mmc_blk_probe+0x4a8/0x6c0
    [<0dfdd9d5>] mmc_bus_probe+0x24/0x28

It's pretty clear that we're missing a call to blk_mq_free_tag_set().
Let's add it.

Fixes: 81196976ed94 ("mmc: block: Add blk-mq support")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/mmc/core/queue.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
index 7c364a9c4eeb..09071e13282e 100644
--- a/drivers/mmc/core/queue.c
+++ b/drivers/mmc/core/queue.c
@@ -480,6 +480,8 @@ void mmc_cleanup_queue(struct mmc_queue *mq)
 	 */
 	flush_work(&mq->complete_work);
 
+	blk_mq_free_tag_set(&mq->tag_set);
+
 	mq->card = NULL;
 }
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
