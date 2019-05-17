Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AD7212C0
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 06:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IIrYkKYetJf7exBTGF7hJmdEZNQyi+3izBSQbAmpjyw=; b=ubYETknyvXSAdIrQQKydaFe8Xr
	ZSOvade/0lLRWTTv0AEcZuWfTz6UL/YftcYnkiOHE4NO1j7pJxQV6HGNpEFbmT278EQNfjmXtxtRd
	05nFUtz5c0OCSLCyjwcFqu0zu2aVSPdKbGqix7xRZQbBYKch6ko7wo3/7Ppugv1j1IhdwmIh5FfZu
	jauBLiuCuO53jcYRXj+wHZ+BgFrz6b4DjtoV7Tl1eUNSAi0tI2dkC0yk1VnVpqXoqMniXbTlwBnX+
	9xv2GYmsnWu1/S2eqb1o12owEyZfo8fRu0JY8Ubr+8LhbgspJYWrn6Z03oG0R7ngg87ImfAXHQysu
	CugpHsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRU9A-0005p6-4v; Fri, 17 May 2019 04:07:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRU8r-0005Nr-AE
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 04:06:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so2976850pfq.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 21:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6yVenyf0a0qIZedfKSCtttpa0WMwEDTZq8Yud/8Uytg=;
 b=kCiLjC1owHy+UsjeF60cBtcatNacrggyR9r2TuoTOmaWEe3JT5GGpL6NQCaDV36Umb
 y/uBj3UO2rVyb7LmO0nPT1LDJ13jKkSjsa+1zBQ8ueyJ9FmLUfe5S/lk0Om0Rfr0OqhB
 udBzRgih+ZPFfi/pgEjD43225Heo+dB1r0fyB8XDYOUslZvLWhrEHS68MQPN4itx5QCF
 5G2Si0cxb+SIySRKcJ89o6NK+bzeiKjUPq+YcDJWlujIPilrDaYpFLTrbyPSXFh2hj+S
 mx9VVpsW1bVQZmZ2Ze6IzHvT3dT9kfO2aRLIUQ1PQFdbLc/kn+Ctg79zCJGwc4LhM4IF
 pBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6yVenyf0a0qIZedfKSCtttpa0WMwEDTZq8Yud/8Uytg=;
 b=ijL87lDPMCH3fX1U3xBq8aLaC3tbLlyAtzLmyuDF2H+1AawmRetfVzs6GGO0xz+svJ
 XVEckh09KcxaEJbsuxwwSk/1xPPh1WgdhL165DmmhCDjkeedAGH0obr0fPcf2T3O7O/v
 vv71hxbinBANlUCRaB8JTtBOk392oApshnzLvFx5yuZG4Zu8WiCTkzCtNz0Nm894oNvt
 jmc5FAbJFo6yXmxrr8vtCx2m+iU3mHzXEoLamGiSYhW1kidLZZgq3mxOiAYgNf2QNYVH
 rvjy3uLIkMuy3BOkvWA+qBHYYX3Rw6Urn6k8+OQMQ1xEGBbbltNHB2gY6J+4dYMUNQXK
 37mg==
X-Gm-Message-State: APjAAAULE5whraFfuiexctj5eoCFKYRkIc0qk+padaQ3I3tx+H336XM/
 IdCbKJOo+7CjNLzQsCvKmOln
X-Google-Smtp-Source: APXvYqyVaMd+FX1grTr8/UOs0JxoMs+1pdWe8hTBQCYVIxmgR63mOxmsGCZ0sfjQ08bGQHR+ZiNFjw==
X-Received: by 2002:a62:e718:: with SMTP id s24mr58695777pfh.247.1558066004331; 
 Thu, 16 May 2019 21:06:44 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6390:5018:b478:7b0e:49e:16a3])
 by smtp.gmail.com with ESMTPSA id d3sm8628927pfn.113.2019.05.16.21.06.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 21:06:43 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Fri, 17 May 2019 09:36:25 +0530
Message-Id: <20190517040625.14607-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
References: <20190517040625.14607-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_210645_824496_2CCE5645 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable SPI1 exposed on both Low and High speed expansion connectors
of Ficus. SPI1 has 3 different chip selects wired as below:

CS0 - Serial Flash (unpopulated)
CS1 - Low Speed expansion
CS2 - High Speed expansion

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Used pin constants instead of hardcoding cs-gpios

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 027d428917b8..9af02d859dcd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -146,6 +146,12 @@
 	};
 };
 
+&spi1 {
+	/* On both Low speed and High speed expansion */
+	cs-gpios = <0>, <&gpio4 RK_PA6 0>, <&gpio4 RK_PA7 0>;
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
