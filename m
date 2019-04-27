Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD07B340
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0t2oQnuC/L9En78wnH+Z8Yt5fIfmo8tUFmadIsLhbk=; b=tRawBpnC8/KPdX
	6zH+TOG0bgQ+7YrLdn670GUBMuYEOPLQKqq+qwcuacFZHlSMiYsR1Z3Aaj1dphA5wWOu8xXpf7WP0
	OhrovAnB6FN40cNl9BXJbg6XLrLcCPoqI6HVheMkej9fpLHiarq++EAU4ncQ3fCeDa55v3lylVV4/
	QlzMupVXI1BN0E/P5FhYh1achvF1cFHC0alHpCqrhkfBWXhlKSCstcplwwusCT2j+hFc47Rbex3hm
	PPAmUwmzr0QJU6KRLV5aSMn7V03xhPRUQW+g+mBfCorz4Zo+k3rzuJ30U+IKoeJ9aqnqr5yxVgaoh
	1bIIgNXoEWAnkrfGv6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpS-0000yl-Hp; Sat, 27 Apr 2019 11:49:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpP-0000xA-86
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so1895436pgt.1
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O3bG+INuCjmpEYs1ECoxq1L4ykkDt1tFGXrxUMr+vmM=;
 b=Gv0d5jV+eUJ4e/abH6IVmgZ45Zc+8r45NN1eVookwE/3PTL/OB1+qggCYPXIexI6zg
 utlZpigvGu0g9JMDW08iQYnBx1f4cvHxWHBJWmz0rDCMFJnCZDXdOaODebccNLHZGVYY
 Kc9TGkK2D1gmzh7SJ//bn2Hk3R8KNgvwOPc7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O3bG+INuCjmpEYs1ECoxq1L4ykkDt1tFGXrxUMr+vmM=;
 b=O7Tv4pmjhnPpnLTor72f6DcygaelrrgLXB+wzqa0G2v9r6unGcbsDvbh/HsFN4zMtM
 SNpCH5zgr9BmkREynIIBpykWTPQG2Gvwi1BqZzDxz76GWW/bA/Cvfzkf/Qiz34CCMDEy
 JeMRz0z7mSvHDshLE55TxMpYIEmOhI2Xt2NT4KZBTZbzLqmbOrtNrODfmxkp9/s4CwUV
 ZbTVCjRUDH6A7jn2U73foR76Hj7ChOeEUR/QEjOyihLv84WBSslHcRL/T25/pZb8DPpG
 2ZZOGmYQsf9b6j2i4SRMS5naxJcwLYfJf/sCjy8VzZQeJUcAwvnzvE0XaQsH4ympB0LJ
 atdw==
X-Gm-Message-State: APjAAAVKqpqS2gkOi3ZDRxlBaPMCD4pmNgGSAfKt+kIBiCurK2szToL/
 D7sn+XGqr6nbC3XduIWvgC6Jfg==
X-Google-Smtp-Source: APXvYqwkp3WSCNEzsLWB4TI1+5WVRlXK5XqgzwccjZtKuXRbwvy58yzwiDIb0e83Yp4yUMl+l0ANhw==
X-Received: by 2002:aa7:920b:: with SMTP id 11mr50922872pfo.3.1556365750490;
 Sat, 27 Apr 2019 04:49:10 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 01/13] rockchip: dts: rk3399: Sync rk3399-opp from Linux
Date: Sat, 27 Apr 2019 17:18:44 +0530
Message-Id: <20190427114852.7608-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044911_286827_43E9606E 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sync rk3399-opp.dtsi from Linux.

Linux commit details about the rk3399-opp.dtsi sync:
"arm64: dts: rockchip: use SPDX-License-Identifier"
(sha1: 4ee99cebd486238ac433da823b95cc5f8d8a6905)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/dts/rk3399-opp.dtsi | 133 +++++++++++++++++++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-opp.dtsi

diff --git a/arch/arm/dts/rk3399-opp.dtsi b/arch/arm/dts/rk3399-opp.dtsi
new file mode 100644
index 0000000000..d6f1095abb
--- /dev/null
+++ b/arch/arm/dts/rk3399-opp.dtsi
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+/ {
+	cluster0_opp: opp-table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <800000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <850000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <925000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1000000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1125000>;
+		};
+	};
+
+	cluster1_opp: opp-table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <800000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <825000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <875000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <950000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1200000>;
+		};
+	};
+
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <800000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <297000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <875000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <925000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1100000>;
+		};
+	};
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
