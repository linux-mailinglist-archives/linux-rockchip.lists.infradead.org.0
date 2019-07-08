Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A654629F5
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jul 2019 21:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JKo3DGH2LBrB+NUHk7EOzzYY21/0Ie/pAWHV5vFK3O8=; b=KOAtUJh11epiqg
	3eWlqXh4eSkjt2AV57RoJF/106Pp2eo+XQofWRlbAtdT1oxTyTHan4KR7ous/9jnNZLfTSRVs5Au3
	7Lxv174sKfpSG5BSjKVTiSqvf3/quypP0f2q04oZpcvg3TGM0cRTMX08f7tr7KgNCnb7ms8B2ZNTg
	cVffimsYVMRGsgfy/C4WIePepBVwtdZH26GQtI0BWVhi+ydY56m+DYCjXgfPotPR2w57BWdG58ejy
	f1s55e9vXqU5QaQGvnEghrazS1wiyT0KrpqaZg+gP/9M5v330TFfaQqCAQgKKANEeM13wAvDFRqXq
	e8/CepXRRapRmC8Fy9Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZkR-0001i9-JC; Mon, 08 Jul 2019 19:56:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZkN-0001h9-Qh
 for linux-rockchip@lists.infradead.org; Mon, 08 Jul 2019 19:56:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id c73so3441610pfb.13
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jul 2019 12:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WObWYhhWlfWVBGeUnBqR5A/L2O8ETbPGrJcR8O8Db+c=;
 b=gNmioWhmY2wZycPdn5yPVxFNf4/YAXjwTI9s4RDYwu2xnnlj/3goSphgltDej0PS17
 DC+0ihNLMIIzIMopYL+xn0JNO/PA4Fw9/bp2vL0D8nElqL5DNQ4TfWHa5xnu700NLV10
 gKr3iSyypDw7cCTFJSCs7W4lZhzX8ls4q4IUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WObWYhhWlfWVBGeUnBqR5A/L2O8ETbPGrJcR8O8Db+c=;
 b=NsNaAtZ4EL+2eqTpD7X2phKvLM9/buV4OMwc7rfOTL+VNIMDVpKCl7vRaa33+/l+V1
 17D0Jjxt13iNbKUIEL9gI9yw9yELfUtbCoA81187YliLevqipZ3seDOJ+Tys6ULA8hWV
 FVtCOse9yluq32HprYRgw8v4nrvOhFCB+zxMXCQ58UVyGV1J6GHPJ4i3VKho4RmHR6qq
 GBLxatjxG/C778EPFu6DRfIbYnQ/tyNwRQEhTy2rJucA+aa8O7Lh25zXPladnuvJ2pcq
 xeicn2O2HDNaTjfNREd/jVMgnc1TO2aEM7hsKyfMzguwvfUBAO5YPXGLeu9FcW0M+lJK
 8Ssw==
X-Gm-Message-State: APjAAAVLODdWPU+ZPtt+5WO3oH1pJo9hH3bkzfdDY498GGaSISBa+nH/
 jol93OW5q0Jhgs7liOK2mbf7KQ==
X-Google-Smtp-Source: APXvYqx0vPrcrmzmPc2DLYJb81E8l+aNgHwjY9pCxax4+LIpY8c/9QsUPLKt9oRE2ZQV2Jvf9k9JCA==
X-Received: by 2002:a17:90a:bd8c:: with SMTP id
 z12mr28068802pjr.60.1562615780074; 
 Mon, 08 Jul 2019 12:56:20 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v185sm23322644pfb.14.2019.07.08.12.56.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 12:56:19 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH] mmc: dw_mmc: Fix occasional hang after tuning on eMMC
Date: Mon,  8 Jul 2019 12:56:13 -0700
Message-Id: <20190708195613.205729-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_125623_868513_47F4D00D 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-samsung-soc@vger.kernel.org, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, groeck@chromium.org, Alim Akhtar <alim.akhtar@gmail.com>,
 sonnyrao@chromium.org, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In commit 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after
response errors.") we fixed a tuning-induced hang that I saw when
stress testing tuning on certain SD cards.  I won't re-hash that whole
commit, but the summary is that as a normal part of tuning you need to
deal with transfer errors and there were cases where these transfer
errors was putting my system into a bad state causing all future
transfers to fail.  That commit fixed handling of the transfer errors
for me.

In downstream Chrome OS my fix landed and had the same behavior for
all SD/MMC commands.  However, it looks like when the commit landed
upstream we limited it to only SD tuning commands.  Presumably this
was to try to get around problems that Alim Akhtar reported on exynos
[1].

Unfortunately while stress testing reboots (and suspend/resume) on
some rk3288-based Chromebooks I found the same problem on the eMMC on
some of my Chromebooks (the ones with Hynix eMMC).  Since the eMMC
tuning command is different (MMC_SEND_TUNING_BLOCK_HS200
vs. MMC_SEND_TUNING_BLOCK) we were basically getting back into the
same situation.

I'm hoping that whatever problems exynos was having in the past are
somehow magically fixed now and we can make the behavior the same for
all commands.

[1] https://lkml.kernel.org/r/CAGOxZ53WfNbaMe0_AM0qBqU47kAfgmPBVZC8K8Y-_J3mDMqW4A@mail.gmail.com

Fixes: 46d179525a1f ("mmc: dw_mmc: Wait for data transfer after response errors.")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Alim Akhtar <alim.akhtar@gmail.com>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
Marek (or anyone else using exynos): is it easy for you to test this
and check if things are still broken when we land this patch?  If so,
I guess we could have a quirk to have different behavior for just
Rockchip SoCs but I'd rather avoid that if possible.

NOTE: I'm not hoping totally in vain here.  It is possible that some
of the CTO/DTO timers that landed could be the magic that would get
exynos unstuck.

 drivers/mmc/host/dw_mmc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index b53b6b7d4dd4..60c3a06e3469 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2034,8 +2034,7 @@ static void dw_mci_tasklet_func(unsigned long priv)
 				 * delayed. Allowing the transfer to take place
 				 * avoids races and keeps things simple.
 				 */
-				if ((err != -ETIMEDOUT) &&
-				    (cmd->opcode == MMC_SEND_TUNING_BLOCK)) {
+				if (err != -ETIMEDOUT) {
 					state = STATE_SENDING_DATA;
 					continue;
 				}
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
