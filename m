Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CA113652
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYVLjRQ2pDKE4P7ZtmPW8npoNdEmXg6d/LgmB22g+fU=; b=LFvTy2mqNuCZpb
	PKLWQ5EOOiPCETdMd+TmNydeyUlanyCrCpu9ouHjR09i+LYxWMXA1xli3vvnjs0GWK3kt760ndixB
	2XdJHNpZ2YWUKeARp0duXtARso0HPwNAH7mlx34WR7gjfAZugJJ3gNSRZAjB+JQEBS5E5XZ1TwXEs
	INT50jKZ3zPIK3mbMyUhk7LCHL0nNzB591gotDoVT9lALdZv++UflGr6TCjihW521HpaLcVY9DrV0
	8oL1DEbGamHBO06ejkmpuaNOcRTXuVFim/ZTequJ7/BtaUvk7gDZiKSjiuLuvg/BqgtgeMwaZ0usf
	NEyEeuHi5tL7p6+58t2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhsK-0005mu-2p; Fri, 03 May 2019 23:45:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhsG-0005le-7G
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:45:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id z8so3431783pln.4
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbIwRnpHasrOr38KG1gDBykd/s7vNBHOqXcN+WuSbls=;
 b=hRT6Lt40DTjB+SAfX7dTiYCmgcS0xVV4LOZGxF1nNO1rE6hTxBbwg0EOCg90s634u1
 RAmh5pNALXGX4G8EPiTonOV0il0j4303l80tCXD0rNbGUOUcwN7zZ9qvSXsYdKqHM6zL
 ME3uD6VSGCzZb29q39EjXHNlWjKzINHiqmMl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XbIwRnpHasrOr38KG1gDBykd/s7vNBHOqXcN+WuSbls=;
 b=lQrOWqITXYRUi625YrvvsynMJNP0NlYobG06Nupq+Ej/3KDSNGYMTkiFKspMokGOiV
 0t4l7u58ykiPSuOxklYImeMl1STpYGG00iAmsm5aO3GKLoaOI4gL93U3VwufUxV0u7SU
 RXNbLEjr3LDRJdyDPbeunNVMmWMsPSex/4vq1v7sR8rJyOCHwZtMVoTsapA8oQc1U3sI
 7IErtLPGxmEL5h1AN9dIRM503GHtVzECOvdYkUMbrQfunakAKfbFfMV6YkQE3lkvRjBV
 srmaSRQzjSkc9ngh15yUhbh1LLWddA5avNCfjlhHyMslTU5rtYaIJj1O5mDmbeMkB8JE
 YszQ==
X-Gm-Message-State: APjAAAVaxLjxlPgNm2jya0vcJMtPosoJnpVysfRTe0fLtMj4NpOUOYan
 QtxR0bO+gF/LqtseYiehVh1uwQ==
X-Google-Smtp-Source: APXvYqywi/Agi0SinrIsRvR8a9BzPcCCDDx1uoFGnmEtsaMSQWa+m9ZHFlINHMkxcDC/VFmBjbEvQA==
X-Received: by 2002:a17:902:6b01:: with SMTP id
 o1mr14464517plk.318.1556927149935; 
 Fri, 03 May 2019 16:45:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f22sm4019071pgv.45.2019.05.03.16.45.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:45:49 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-mickey's emmc work
 again
Date: Fri,  3 May 2019 16:45:37 -0700
Message-Id: <20190503234537.230177-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164552_267063_9B7DF0C1 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 amstan@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 briannorris@chromium.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When I try to boot rk3288-veyron-mickey I totally fail to make the
eMMC work.  Specifically my logs (on Chrome OS 4.19):

  mmc_host mmc1: card is non-removable.
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: new high speed MMC card at address 0001
  mmcblk1: mmc1:0001 HAG2e 14.7 GiB
  mmcblk1boot0: mmc1:0001 HAG2e partition 1 4.00 MiB
  mmcblk1boot1: mmc1:0001 HAG2e partition 2 4.00 MiB
  mmcblk1rpmb: mmc1:0001 HAG2e partition 3 4.00 MiB, chardev (243:0)
  mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
  mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
  mmc1: switch to bus width 8 failed
  mmc1: switch to bus width 4 failed
  mmc1: tried to HW reset card, got error -110
  mmcblk1: error -110 requesting status
  mmcblk1: recovery failed!
  print_req_error: I/O error, dev mmcblk1, sector 0
  ...

When I remove the '/delete-property/mmc-hs200-1_8v' then everything is
hunky dory.

That line comes from the original submission of the mickey dts
upstream, so presumably at the time the HS200 was failing and just
enumerating things as a high speed device was fine.  ...or maybe it's
just that some mickey devices work when enumerating at "high speed",
just not mine?

In any case, hs200 seems good now.  Let's turn it on.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index e852594417b5..b13f87792e9f 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -128,10 +128,6 @@
 	};
 };
 
-&emmc {
-	/delete-property/mmc-hs200-1_8v;
-};
-
 &i2c2 {
 	status = "disabled";
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
