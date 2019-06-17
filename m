Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF1B47B84
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgAt+MzdO2z1oHrlOcq8crrOi3NHLrdiD4BnTSz9o10=; b=G5hhqTus8QP3z8
	se6EX2ACAv2vCjtYzTOypqHU/VGyGpegp+y9+DxGath/IkmNK4ue623C7/z9jhT/VCPVPLLrcED76
	is92SEKhzQ2v+AybaIfT+Grw0Z7HocxAF31S8VL6sdmd7MvzXEWP19tpgLz6EoKH1wUFM/Dlqb9Pj
	+EbIZ5H3NX/v4LkX28wNlDBJ74CT1tPRVjVK7FMvj2ZAuvY8xpJURh7QHlLO7cGN3PotIg6nx3we1
	V0yi2n/2bsVMpWdQV8IAQ71csA0PQChRehqiNYdc4FEwTOkhl25ffcCBTE+Yklz/3yY1Z82+5GMz3
	K8zqPL6PVXx6SkW+hppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmH1-0002SS-PE; Mon, 17 Jun 2019 07:41:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGv-0002PD-Uq
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so5301650pgp.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=svPyKMC7agKotsKXgXx/yVThlFKQ4oONT41qq6LCJJI=;
 b=HZhCabNVtue1LMzPXjEIoyWsJyT/F/1VBW37tZt7id3KuC/SysorYztGZx7cSB3I9E
 O9xnEiRbV3c75skPOeY1EwrfZrC4slEAmQEQz27lJ/ZtI0kTdD5M51glyo2lErABTMUw
 PhxFvWu96nqleOCxAg7oFWCBK9rOea1t9yvsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=svPyKMC7agKotsKXgXx/yVThlFKQ4oONT41qq6LCJJI=;
 b=tkLvi0OUyLmGWitjt6+k5MBfiFlBR2cbANwGnD57FRGABzSC483nk2nKXdFwrIhkCQ
 O3EOf/P6nfOe4Kcq4TY8mz14Q9J4r99/Tk6D9aexspEZ3S0WwRPxIjGhLu4SRz+dmgHy
 FOYouqRbi2XKlZWCfHiENfbAgDrnqETrG6ueH2s5oKWPibYmXqcxCXSmM3yip2cYmx2q
 YDDpG3NUnnYJ5g0/zY6vJxpd5TiMmjs1f6y30HrqXdnQdFaIHEX5oBsTvDMod/q2UcW3
 W3PfrRs1DdARbq3weySIZhygOLNG4+Ngmkj8OiZvoSTI0bPSKmXquPq1OvCRMh/Tk3oH
 DYpw==
X-Gm-Message-State: APjAAAWMCGQg+B3qOjyMB3vxSEo/kYQ/pOmu5orMk2U4UKv1rSfAymKT
 AsR/DM/4nDFc264FzNl9Vd+p1Q==
X-Google-Smtp-Source: APXvYqyVuhClXU4AUxIHgfp9WYjjYeCEp8Z5bhBvScKtQ/6rNYi926+LL7fSlkZbTAKqokTu5T7J/A==
X-Received: by 2002:a17:90a:ca11:: with SMTP id
 x17mr25098329pjt.107.1560757305417; 
 Mon, 17 Jun 2019 00:41:45 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 98/99] rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
Date: Mon, 17 Jun 2019 13:02:51 +0530
Message-Id: <20190617073252.27810-99-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004146_016818_926D9898 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use LPDDR4-100 sdram timings dtsi for Rockpro64 board.

All these timings are processed during TPL stage of rockpro64 board,
bootchain. This make TPL would replace rockchip in house rkbin in
current bootchain.

Bootchain after and before this change:

   TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
index 7bddc3acdb..dbfa4ba9f8 100644
--- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr4-100.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
