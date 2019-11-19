Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858DD102C2A
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 19:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs/8dEw555gWwddNXHDxYXtcdIoL2aaVjjnrO1Bil/Q=; b=KE8THY3xnDPLLT
	ftchi35y0FOlK4TopArLyrIVEo/0LaYoDNt4EauPlt1K4nArDJ1hieWlV+eCyEmsccdTPUGk0akIx
	i8uD3IyEOSFOZ9Ajtq8kkAAHa3FC/7eEYqXrmBmz2YERa2Fpfl94UL2rrjjaciqc3jrcBq0+c4Gab
	s+tMlxAIW2MqzTaYddkiFnMEo540TQX02yDl2JdVUjZ/1h8S2hEzgrbEt8EJYlxrahUs3DU8W1xs0
	FZxmLA6kwtyN1UgXlG2GTNiQfBqOxT0YpS+n4RhUKzRAfvT0ymysnuOBQJob8qn1xm1gnPTDYRuh3
	dnVnGbvJHo7RzQb7bBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX8i9-0007aL-Av; Tue, 19 Nov 2019 18:58:49 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX8hw-0007Nm-QB
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 18:58:38 +0000
Received: by mail-pj1-x1041.google.com with SMTP id gc1so2979866pjb.8
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 10:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tCrU7kMtOhnJwNIZxfz0SZJ0AKq1g5JZVrjQTxHcuS4=;
 b=hwh9vxCU2MJkwDgYPUI84hzOt7qhmc+CdovSRIV3pSu7WrmNbWx60wYUeYsB1Kaw5j
 Vkozznd7ocVPn2yiTH/c/09in9bcd1n2P6s/+xRlNGog+zIVuJ4ZcHFh+FU9ML+L00RO
 7trPFH1QWPt3v2pZhWacMpyA2S+kLOvMSczd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tCrU7kMtOhnJwNIZxfz0SZJ0AKq1g5JZVrjQTxHcuS4=;
 b=fkuCNruLKe03t2VzG1LWghCpLnracs4zDx8pjpF9cqq4ykxdy7ZGFKLZTYT5GzEHjs
 a0RewZmsXZ1TVl5Z0tiv/VCIDPBWqX3SyQleHu/rzbewqEuyXPZua2uF7Mx86So0fhhz
 KLUkrdT0Wet0VL33YGD+XzXe95iZFwfc8TYHAEAzrQ9rqrSJkmno423ejCP7fJzsQyJ5
 deLPAxYWvaid3VNvhVaYD2xyvsYXFWzP7Gd8QgbvJFB94G8qBk+0QRxA9nE+459F6fee
 9EGfdy0McpAHEgTfWabUs0bpqt+2/HK2dRvXXT4nXF1skP7NnJI8bp+mUgQJ6NiQszND
 IGKg==
X-Gm-Message-State: APjAAAWmAO523Dna09OKkuYnnqQRRgHBLADnSllL8hLsb30fKaB58pRF
 y3bgo0qDILZLIE2Elh/03wswCQ==
X-Google-Smtp-Source: APXvYqw3ksX3/scZkZrClNcQI4wINkcNVOzF9sTBjirib0yItcf3MYqd2S8L7QGc6k8nAcGm7H1WcA==
X-Received: by 2002:a17:90a:8995:: with SMTP id
 v21mr8517928pjn.109.1574189914762; 
 Tue, 19 Nov 2019 10:58:34 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y24sm28017581pfr.116.2019.11.19.10.58.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 10:58:34 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add libretech compatible for
 ROC-PC
Date: Wed, 20 Nov 2019 00:28:17 +0530
Message-Id: <20191119185817.11216-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119185817.11216-1-jagan@amarulasolutions.com>
References: <20191119185817.11216-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_105836_887891_859E8C83 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so append the compatible
"libretech,roc-rk3399-pc" to existing roc-pc dts file.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index cd4195425309..6a909e4eefd2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -8,5 +8,6 @@
 
 / {
 	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
+	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc",
+		     "rockchip,rk3399";
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
