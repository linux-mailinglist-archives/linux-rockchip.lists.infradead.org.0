Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C35134D7
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 23:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t/L0q9IZiCKWBSGWykEwXq3eJj39LQnM2JjALhpT3qk=; b=FP1n6ck8DTmu42
	OOiH/2c3OamQvxHu9StJ6RsruKTBElG/+/q1JcG8E/8P+nqiy7YVLh6qvnTgW9Xc4JXz9LGY2dPRT
	GKc/apjkPQ1CfWcPdUDX4JbCFb6Sj1nwrOYE3NDD9u54bnXymHDB28w1BVOg2L+q9r1jryRl9ahmr
	+yeQLp0z1Tmgz2SwSA4z7a9YgpuzwXdEIh/0D0pHhEk53cIHKkdECxF9jW5nl+wIlOKZGh6sibQSF
	gj8gV/kDAggJIB8CpPfiE8N3HbKo9Ku6/LDcvjNj14czSS0P8ot+e3IPpEfRerwvEgjYehistNYq0
	3bPyc3wh1/90Gb7HqJRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfdT-00033L-RK; Fri, 03 May 2019 21:22:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfdQ-00032I-QW
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 21:22:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so3177514pfw.9
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 14:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AZfe6Xnlp8VFcttQXUP5Y4s8do4K2Dab61b+eO+6utA=;
 b=Ywbl7kJHsqNmfa+P0RIOnALkQVqOBZ3rOjAKRARApKe6qorHXO9plEnJ/E6KwmYq9p
 zZLP1ryFyIwSpDYvxAgWBdgSVsDbm8/Y40/VsTq7CjRlcbtLl6TmN18VUjgl0m4+nbGn
 Y+IoChQEJB/RlVWi/5OUaY6N6KwVRUrqKLgH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AZfe6Xnlp8VFcttQXUP5Y4s8do4K2Dab61b+eO+6utA=;
 b=e8xLuZvJN4CvzPAa/CZWPea0dOoFM1scyHArk/9Xkn2GVW8xSs/6uHJ0QyU7o2K4P1
 RmZ++mN6WeW+cZWnTca00RppLNI6N8D7i6+rn7/zwLlVO3aA4Nrd5plp3sjfOc0UTx5R
 MWnJaoLhQxXIe/7OIEdCJf7UD7nNG9YQCCcXjAVR/vcklLlweYHzlAAxD6hapfHLav/j
 B6tS5WeHPq5tSf18BoKHetOD2kLY1MVxEw573RDCc/xHTAL7gjaEym0sxQ8MXtQ3v20E
 gJwF8dLF74jdVbM/pxV1Nzbp8+CE/rifXmPUjnMVdAzrLe7Ew1F0X3vWckCv39WwXJAA
 87fg==
X-Gm-Message-State: APjAAAVxIG1LZosQWa7v2BnyYlRPtu4dnzCNRJkAOpQnPxr2xS39ijSk
 +PbIC0UypAKABCqdExl1YXuOdg==
X-Google-Smtp-Source: APXvYqxHbkpyVU3AFiwBC4zYibpjEWUdOnTxjcv/gquMISFOa13IJ3gYibHW3sbdWh1EyzOUBzcDlA==
X-Received: by 2002:a62:3501:: with SMTP id c1mr14483708pfa.184.1556918542223; 
 Fri, 03 May 2019 14:22:22 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id b77sm9206722pfj.99.2019.05.03.14.22.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 14:22:21 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] clk: rockchip: Don't yell about bad mmc phases when getting
Date: Fri,  3 May 2019 14:22:08 -0700
Message-Id: <20190503212208.223232-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_142224_888380_78D761BF 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: hal@halemmerich.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

At boot time, my rk3288-veyron devices yell with 8 lines that look
like this:
  [    0.000000] rockchip_mmc_get_phase: invalid clk rate

This is because the clock framework at clk_register() time tries to
get the phase but we don't have a parent yet.

While the errors appear to be harmless they are still ugly and, in
general, we don't want yells like this in the log unless they are
important.

There's no real reason to be yelling here.  We can still return
-EINVAL to indicate that the phase makes no sense without a parent.
If someone really tries to do tuning and the clock is reported as 0
then we'll see the yells in rockchip_mmc_set_phase().

Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clock rate is zero")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index 026a26bb702d..dbec84238ecd 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -61,10 +61,8 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
 	u32 delay_num = 0;
 
 	/* See the comment for rockchip_mmc_set_phase below */
-	if (!rate) {
-		pr_err("%s: invalid clk rate\n", __func__);
+	if (!rate)
 		return -EINVAL;
-	}
 
 	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
