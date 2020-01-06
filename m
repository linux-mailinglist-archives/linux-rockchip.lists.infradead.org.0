Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828DD131ABE
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 22:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2PozpHt4b88s3AeOZAFimOJ4x7EAqMYBHsxUVfXuoH4=; b=An1ODuDK3/IAXl
	hSC1ToDhpzTQ/BiPILgLR80i1Zogrw0LL+c28ZltsjA5NkVDgy8mqYrKbjGaXikgB4wDVk1I1b+lZ
	62hefpE+l28uhym1J+zNqKpWEqFt84J4FOx8G849dTei8LpnlagoHHW/R8nfBcOHPqHcAx0EseTFo
	CGiDVFIRwZxfOeCCpzvQj259y4Ljxvpkb6nQss1Rp/096OKv/bFJpZrS/Ck6ZAmX2oJ1k8l4Qrsei
	ugTZ8Nyy5bD/Wumc2y4Pk1/Ckmguh7J07iwjl5Gf2lXD+pPUp5KYGm8AKWsMPfS/+cXZNLv0bvZ1M
	fwivHEnMb4afpBAdr5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaIh-00053r-Va; Mon, 06 Jan 2020 21:52:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaIQ-0004qU-Dm
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 21:52:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id b9so27453455pgk.12
 for <linux-rockchip@lists.infradead.org>; Mon, 06 Jan 2020 13:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhqR1/1MlVUjoENfjGDIreOdfy6GfxPgEoAWtDhN0Q4=;
 b=gQK8DrKlDGQnDMNra0PlNsTOHREW1yC3sxVpzB0qZCb9UM+p091dInwOxPher9gV/n
 I2s8vDLkf6BIdgh67RftE5yaQ7X9Mcj9sFwRdkbu2b4fzWO/I4rY4FZNAnlTDPjNtVsy
 u7rqiyjs9BcaCVv7oGWGA8AeC2lBHg9f4lRr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhqR1/1MlVUjoENfjGDIreOdfy6GfxPgEoAWtDhN0Q4=;
 b=YbalgfFY221lYaLmfJayyADeWg0zUNhxt8SK08DcJWbLhUXb2iED3fkZsNVQ+55Qt7
 PGhtw+yV1OU8Jwm38alg/PB5Mf1Joo8o1yJXjmvLEf4z+n7TPSTbPufjj+54kMroiGwf
 aM8FBpW6kXFbuIfaAJATEQcYJi02KVdaw5s46KjGYJ/qUwfwf0vSFiutCYPxXBjhDMZm
 T88MbhRaEU/dPM15x4bW31oMqrYCSADIKNPnZ8N6+NtU7YJ0zhk+A0iEAXZk+nG0sD9y
 UfeHRScvsPCRrYmxKrjj89HX52xejzZBFXeKcasEiYZpUlgu6CEvf5GjKDIdJ+fUmjf1
 Ul8Q==
X-Gm-Message-State: APjAAAW1NKyJM5Q/P6B47cUv5/aWo3Q/RCqqPiuUMENLQ9dhDJZ9yR4X
 yU7EFGKhq41WPG8Xg5pn1okiRM89Gvc=
X-Google-Smtp-Source: APXvYqxyWaoI/OIl6fTrlNo3OKnYhN6S0VeCnD1VQu7xJTxqyHXS7GKPxBP+33HmV2tCGrUvChFyxQ==
X-Received: by 2002:a63:5920:: with SMTP id
 n32mr111368952pgb.443.1578347541160; 
 Mon, 06 Jan 2020 13:52:21 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id b193sm71513996pfb.57.2020.01.06.13.52.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 13:52:20 -0800 (PST)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on
 veyron fievel/tiger
Date: Mon,  6 Jan 2020 13:52:13 -0800
Message-Id: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135226_789281_00D84958 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The flash write protect pin is currently named 'FW_WP_AP', which is
how the signal is called in the schematics. The Chrome OS ABI
requires the pin to be named 'AP_FLASH_WP_L', which is also how
it is called on all other veyron devices. Rename the pin to match
the ABI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 9a0f55085839d9..d66e720390121d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -382,7 +382,11 @@ &gpio7 {
 			  "PWR_LED1",
 			  "TPM_INT_H",
 			  "SPK_ON",
-			  "FW_WP_AP",
+			  /*
+			   * AP_FLASH_WP_L is Chrome OS ABI.  Schematics call
+			   * it FW_WP_AP.
+			   */
+			  "AP_FLASH_WP_L",
 			  "",
 
 			  "CPU_NMI",
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
