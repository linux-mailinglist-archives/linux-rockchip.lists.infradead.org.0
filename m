Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459DA13495B
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 18:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Peto/TGNcIgrJQ379ynN1P+PwiHFR19ctxcPre0WYo=; b=dG29vgMnkzGiej
	4s0JTIOkwttT2hMde+e641oAzd4FPguKEFyxWp4Hcmpd8h/KP/yh7phTADVMsmyygFjqb6ZlMakb6
	7XOjpbH6Ynnr7HipoHL+syHa5k+3s0OiBErIRmCv0uEyCDLcKoTker/XjqzX4YVRu+vWHx+2N4dWS
	VXsKCggjSlaSYLnMX5uDIpTmKDyoCow/mST5BXDCFsb7CYPrC6XHG9CVeCxB0eS8dzbQmeQKRpWYZ
	b9AxDfg88sZBLah/+EFe3UIXYTuWyFIPLFYZymLS7aQ5tDYimG61FmGleAhJ+q+BAHpXnlGtTK654
	0UcJjhlFiKZHFp6Py9cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF9O-0004Xx-Me; Wed, 08 Jan 2020 17:29:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF9K-0004TF-1b
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 17:29:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id w62so1954817pfw.8
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Jan 2020 09:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMwd4GY7WpoUd+q3WHc05cOMnEtzmKmuiR4/lw/Ya3g=;
 b=T/HyNHaq9e8cbQVUreQfu5gRUOxAEtP7KBnGPK4VG1izDsBIXfErCDkAzoODEWAKfT
 KmVRs7if9s79Hw4/IRFF7llVxAHbrvpIH1e5fKl5V0cerMK08L5hixYimJYXzQig4pB4
 ihttQxAnVdGv3/7gXuOM7it2XnqHJCQwIkoIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMwd4GY7WpoUd+q3WHc05cOMnEtzmKmuiR4/lw/Ya3g=;
 b=BWf+T8tkPmnvt/IeRgxC0KYRARob8YEzPP1MDzU16KncMdYAGf+MbqGAagdaPJo1eF
 iuuFra3fcW42sMpM82c+ronmSvZ8Mn+jm9KeMnPFuO2b8lBU6CZ5rCxmYT9JopODTEMh
 1AhS3hrECL0z1WqUdP3tk0DM1uQU3rKtufnsNPA2xDBX0OYxmVlqpVF2QFG32+apUrH2
 TSSKnkaAU71OdCvS1ITo07fOfBYI5ZFQ7ACUI9zgD4pwX/D2/W3dTS5Xd+GQzMYmfg4d
 Jm/HGZibuMXGST7Dl75Cs4UuaLb91iUxoVC5QFXhiTkwbJbVMxdMk2yUMWL6JsnjUcBS
 GVkw==
X-Gm-Message-State: APjAAAXvYsNxe57OwA3VAat7q883ihi4S2xraQxA/MCAgQlIbqjfRBmx
 GruhJQ45LEJILB4S1R6G8jIgUg==
X-Google-Smtp-Source: APXvYqw0OvKMBstXlwLxuisnD8Yf1k/xKZ1PL3f/l7d7MkDcdEYGfVApur48bGpdfK8DooEJJ6BlMw==
X-Received: by 2002:a62:7c58:: with SMTP id x85mr6263307pfc.76.1578504577924; 
 Wed, 08 Jan 2020 09:29:37 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id i4sm4464144pgc.51.2020.01.08.09.29.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 09:29:37 -0800 (PST)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: rockchip: Use ABI name for recovery mode pin on
 veyron fievel/tiger
Date: Wed,  8 Jan 2020 09:29:33 -0800
Message-Id: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092942_090130_56867CE1 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The recovery mode pin is currently named 'REC_MODE_L', which is
how the signal is called in the schematics. The Chrome OS ABI
requires the pin to be named 'RECOVERY_SW_L', which is also how
it is called on all other veyron devices. Rename the pin to match
the ABI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Another misnamed pin, I should have noticed when fixing the
name of the write protect pin ...

 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 2d6f32b77821b8..9f4bb5d2e7d8dd 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -234,7 +234,11 @@
 			  "PHY_PMEB",
 
 			  "PHY_INT",
-			  "REC_MODE_L",
+			  /*
+			   * RECOVERY_SW_L is Chrome OS ABI.  Schematics call
+			   * it REC_MODE_L.
+			   */
+			  "RECOVERY_SW_L",
 			  "OTP_OUT",
 			  "",
 			  "USB_OTG_POWER_EN",
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
