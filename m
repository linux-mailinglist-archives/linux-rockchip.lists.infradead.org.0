Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82653105430
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 15:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MK+YFMFGw8epsYubFq9QZNwAl+e3XyZqcGS7FtQbLdc=; b=aMbPsRRIkupfFl
	cLF4VQeqSw3nOoBp54xNerpmUimJjuAyx+7yeHbVxynC6U2pUqIUY/lVcqlSuiL7ghAwTCnX4oJ7W
	Ef+IFfWzqNnqVWwMr2/IBU+yuO1VQ9CNC7YPf+FMmOFMdiUyE04DaPrf7dZkPSAeqQcs9kYhMlON4
	Zc2es6eYQRfhilviV164Q2VDrGah9RDjNnhIU4Yal45uyHYeunHKruWLF/NjcmDoueotLCcHlcr+s
	Pyh79mVGXVOXTk7KJSEF2WTLQa1XKCajC187kCimaMCoihZqoDG68Ru2jpfOL/Wjdf7rbUtBablC8
	8A4IX5UEHPiL60x3ZVHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnFg-0002Wj-Fh; Thu, 21 Nov 2019 14:16:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEr-0001qi-Lp
 for linux-rockchip@lists.infradead.org; Thu, 21 Nov 2019 14:15:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so1609606plz.12
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2019 06:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I6yA6TdrKO0G1JGypZEAKYVfmifyHMcNDjr9W3hUK+E=;
 b=OU+GiCP10q9PnP8bkEcFaAdutdza/iERr+D0OoLljK1MmkZMko724GceiauVEvI5Qy
 i+jRkFfhJKSvUbE8cP0wU8IXLB28x6Cy2XOR2ZsqnhydicNZpRBcPrXBRxG9vQS8ZI0F
 kUhIL72l450esX8mcjqodnluupinKQ49p/SiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I6yA6TdrKO0G1JGypZEAKYVfmifyHMcNDjr9W3hUK+E=;
 b=onYIwSkjlGh3dnTJuB5ag6odJj9oKTC0WUuQ0Ud5z11nGjj4JQs1+ZoPTq7hqPuMdd
 Hjn/57aVOiIf7Fo0eOOl3d92ezdG7FGLq6CwR/TRk6FIUqlV0nCNPTVJe0Ztk7Vye7U4
 K4XiwTfPtTZ3ngiwEpaFLotOMXJVdr4RE8Y88Pwi1w2p1VR71dPqXB8Bg4JFDp/IZNd6
 eXBK7ETDA61ugbud2DGDuWLs863CCSAI5j4RMJuFQcLKwxmMoaCQtiOtuDoEQZr5HdOw
 KdEr0zGJnMJnC7N2Msq0MX/o2pISiVmYZD5rrMKsP0UincIkJ1mJY5ss8lNuL3MDYAzt
 QIxQ==
X-Gm-Message-State: APjAAAXjgkO5m5GJ51u8jACLUpTmLu0HYDnZxnnP67ltVu4kdI0sT9bq
 Jw7uLloOF8Wu766h6uhXzzuqqg==
X-Google-Smtp-Source: APXvYqzs2J4YhqGXlT0xDxYXUbauaCJnilI7GqLrXPtDGy4WsDd4PG5Ypm+uC16rNirt3o8Uj6Hwjg==
X-Received: by 2002:a17:90a:33ce:: with SMTP id
 n72mr11931278pjb.17.1574345716897; 
 Thu, 21 Nov 2019 06:15:16 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:16 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/5] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Thu, 21 Nov 2019 19:44:43 +0530
Message-Id: <20191121141445.28712-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061517_766438_2BFFFDA1 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of dalang carrier
board for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51aa458833a9..afa6b2e5aeed 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: rockchip,rk3399pro
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
