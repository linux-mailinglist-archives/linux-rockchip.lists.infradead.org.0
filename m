Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8A0352C0
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 00:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qyRfzm5Snv0qNvG9QenFWXh46KnA51TojHobbyM1jLI=; b=FRuSwsQ7sxvgZe
	t+CWqrqyy8IJfvQYZVFCZ12o8N7fbDHXPQvEuupGDPX8Bf/eIMTSw4oN8jOfUt7Z3sDzz6TerJCfI
	f8Da3eSdYzqEJRoOUjwn/TjUQauZF78DRfobzPwuuMHyond78Kw5zStch8NLXotfx6UWGL59eJ2Px
	wVEEFVvPNNq7sTCxSwCK5dAo1u/mcAfisFmUrkYR1Jb4WGHB5eKKqR1MYQd4LwoyI/jWjMJ+b9ggY
	odcCthIRRgyNOlS3bHTmVH8/t5hALyevLH58kfrl1fLV4Vs1yollDXTU2VvyaUCY4ydbd4sUwPtqO
	p696T3Qnyu78aq8rMJug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHyf-0002xN-I1; Tue, 04 Jun 2019 22:32:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHyW-0002qw-MA
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 22:32:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so8897878plm.6
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 15:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7LrsWOu9H08D9VnyWoK4aMKFSqz39fLtN0sqw4NiYmE=;
 b=a6SMCfW3Grszq2AuhWerX+Qret6+CW6/s7WM7ae6WCeNv1pzOjPcAAjhxtm4SMJcGw
 bep+z6ve4HsBKKv2+9WzO3L68i4ehYfGyamPfhQOqc4dcrn70qgWiT9PBsSdV4ohOYs5
 63QbziAKVPMzQ/8C7IHZCEsYkvSNHeIsA6E/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7LrsWOu9H08D9VnyWoK4aMKFSqz39fLtN0sqw4NiYmE=;
 b=VEv2LtCfE2hLLVeu1qw824YjUgezAOojAKpt5tqVdM9maGbcB04FnCFz2MNrgLD6Ng
 4WzGMh2zQrHmMFDi1nopoXnVTVuJPQKadJEALEDRYxQqp4lWhTDxy2a9d4lAePtDyTDM
 R9IPwdln3zEaCVnuF/c4ig582AnqDoqDR/TwhAeDvkkrCaae0RwycrUje4REoBJ9Iu5A
 RQvhRhinKVqOdvvyXxWfpR0TJVVrpedNRH4LQ6LAwWmSypW3PprduNqwU0lNCWGwB6uQ
 qE/fGH2T+IHAqBravrT2rUPlTjOwIoKCmwuVi1UvgiO4l9pyG+jwR07w9bjwE45Tvq4t
 gJUA==
X-Gm-Message-State: APjAAAWQbgeHAWSCVJuJibskC6gUUvk9z3fxJ9VjrghRkQ9/eT+U8w/n
 VLZpoX7oLDHvJanyPMm9vg579Q==
X-Google-Smtp-Source: APXvYqyP3mL6L3hXGIHj9/i/mpdSFQYcVM5JqdDzD0ZqHoQlEFBlN2xJ2cgV7XcUdPhRNGofv0hBsw==
X-Received: by 2002:a17:902:6ac4:: with SMTP id
 i4mr37076584plt.75.1559687531967; 
 Tue, 04 Jun 2019 15:32:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id i5sm642508pjj.8.2019.06.04.15.32.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 15:32:11 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: Remove 48 MHz PLL rate from rk3288
Date: Tue,  4 Jun 2019 15:31:59 -0700
Message-Id: <20190604223200.345-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_153212_726879_CFA4E827 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Urja Rannikko <urjaman@gmail.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, seanpaul@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The 48 MHz PLL rate is not present in the downstream chromeos-3.14
tree.  Looking at history, it was originally removed in
<https://crrev.com/c/265810> ("CHROMIUM: clk: rockchip: expand more
clocks support") with no explanation.  Much of that patch was later
reverted in <https://crrev.com/c/284595> ("CHROMIUM: clk: rockchip:
Revert more questionable PLL rates"), but that patch left in the
removal of 48 MHz.  What I wrote in that patch:

> Note that the original change also removed the rate (48000000, 1,
> 64, 32) from the table.  I have no idea why that was squashed in
> there, but that rate was invalid anyway (it appears to have an out
> of bounds NO).  I'm not putting that rate in.

Reading the TRM I see that NO is defined as
- NO: 1, 2-16 (even only)
...and furthermore only 4 bits are assigned for NO-1, which means that
the highest NO we could even represent is 16.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-rk3288.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 152a22a69b04..51a26ff600a1 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -101,7 +101,6 @@ static struct rockchip_pll_rate_table rk3288_pll_rates[] = {
 	RK3066_PLL_RATE( 216000000, 1, 72, 8),
 	RK3066_PLL_RATE( 148500000, 2, 99, 8),
 	RK3066_PLL_RATE( 126000000, 1, 84, 16),
-	RK3066_PLL_RATE(  48000000, 1, 64, 32),
 	{ /* sentinel */ },
 };
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
