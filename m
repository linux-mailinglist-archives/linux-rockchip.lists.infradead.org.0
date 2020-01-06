Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84545131A37
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 22:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awwM1B2xiAuW3nAAVLMl0ZMgWJwvo4tfajSPdUakHBI=; b=SKszmzbHYhF4WE
	glM9SeuDI8zViieSG0otROXtxy43TakYV/Mtaotef+N7P2FStxHNyeS8kgzgm4Kzuk8macbYXSbxk
	KVXtJvyxVye+/cTSLYE1Wrc0PPONoPBPzWYovNzv3hv++lQ05O0liohsz9cASpNMs2QuKbYEh3B5B
	8R6d8np+9nnUGFh1QT0MhMy3CatffL5E8msNvKuG3seQWHTno59NYV5YJnWMDupfIhxHHqxPr95cB
	btv6VcPRQCr8ZyvgLUfPanOzr0TV6EsQYx59Gw/cFHPVTSJpG/HK6Q2TyviZfQHMl2CEtz/64GuBS
	fB7ni4zgw/04wzfjKg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZlC-0008Q6-Ab; Mon, 06 Jan 2020 21:18:02 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZkS-0007cT-8j; Mon, 06 Jan 2020 21:17:18 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ioZkQ-0001XK-Fq; Mon, 06 Jan 2020 22:17:14 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (pD9E89450.dip0.t-ipconnect.de [217.232.148.80])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 006LHD6u032152
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Jan 2020 22:17:13 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 4/5] dt-bindings: regulator: add MPS mp8859 voltage regulator
Date: Mon,  6 Jan 2020 22:16:27 +0100
Message-Id: <20200106211633.2882-5-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578345436;
 06953175; 
X-HE-SMSGID: 1ioZkQ-0001XK-Fq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_131716_464406_52721433 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The MP8859 from Monolithic Power Systems is a single output dc/dc converter
with voltage control over i2c.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../devicetree/bindings/regulator/mp8859.txt  | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt

diff --git a/Documentation/devicetree/bindings/regulator/mp8859.txt b/Documentation/devicetree/bindings/regulator/mp8859.txt
new file mode 100644
index 000000000000..74ad69730989
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mp8859.txt
@@ -0,0 +1,22 @@
+Monolithic Power Systems MP8859 voltage regulator
+
+Required properties:
+- compatible: "mps,mp8859";
+- reg: I2C slave address.
+
+Optional subnode for regulator: "mp8859_dcdc", using common regulator
+bindings given in <Documentation/devicetree/bindings/regulator/regulator.txt>.
+
+Example:
+
+	mp8859: regulator@66 {
+		compatible = "mps,mp8859";
+		reg = <0x66>;
+		dc_12v: mp8859_dcdc {
+			regulator-name = "dc_12v";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+	};
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
