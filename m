Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BE369ABE
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOitEqOFthbOLa31v9skUmqyZUGq8gMwJdffH8g/N30=; b=jP7JWDLYKVM6b8
	TZQe4dGa9jlrOe+JHEMc9svNjugpjP2kSMx8y09Qc5jDCIKqe5paJbH4YfQ7EeFLpLaU8eu+ZWEOJ
	ESxWdSut58dMRjmo0wCKNl3tJvAmcN6MdWWCuW/oNnWuVUJqBj+YEQvlqSF000MPc4pcXPJlYZAtu
	itsNzwDZ2xN3LzTFGTaRgDE6hqVzQM2NRaMOzbsD3HE46oG9zi6YVtAqvZ+SNrw7sRR6+4WVacUVZ
	kZ+wWo2CCC3WXZuqGM8xb8iwLIn75hEyjtQE65iRDLcZyd4IUErZZOTKYemHXxSmyHgJcCa281l9s
	0r5wE5SLQNbvtzPI18QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5c6-0007KT-JH; Mon, 15 Jul 2019 18:22:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5c1-0007IC-PV
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:22:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so8707362plb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Fw++nmbb4WyxKfVf62oDVeir0dauMI5LkgU071iwqA=;
 b=hRAkPB+7Sqs9J9KofI4ju70rSkmC1iexzOO3WOVyip/Zf5KOdE004b4FswlRCS0ptV
 I1+EyC6aNtDvIqzf+WDONOlITcfC9gZ/fYf99ypZ1rDzNb01eBQ3oWpthQgypIo16ZoL
 fSty855R5oWcUC+0FzugKJPdXj/6FIftfFS34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Fw++nmbb4WyxKfVf62oDVeir0dauMI5LkgU071iwqA=;
 b=SrP8zkUSzDP6glnLANgfVWKLbUSF2lXdln41He7I0lxq195l+6K1kZsCGYaf8Q6nzg
 f+w2AT1IuGT0LZG/hQayaS0hhW1/XWjYOAUr5T60O2JP5fapDJqVbuVqL+wOu6H9R78x
 SyqXYNV/VFmzogt1BvrOTtAgJZeYGSYUMK4zOR8xybI4oKmd0WVzKYsRzEuKhpHaJzk2
 ml9kiAp+exQW1XlW6uoGS6tXcECp6h7jUpyDPXpIa4t5TSKnof6EJs3mZoUvKbWsAIvf
 O7hVOr2MEWzbcLLzwgMtI6mHFz6V4EGsTqdINDwcX9JPgStZ64C7LxWOQlYG5SbdSeHS
 RSiQ==
X-Gm-Message-State: APjAAAW3tOdJYFknCI+gLJhpW01bElfRcQgTFmmZ5idnBSPokChKW5vn
 /tdElvFRkwtfwBor5TAXsawJAA==
X-Google-Smtp-Source: APXvYqyRdWGJOy1/QIXYRsENuyXaN1xFKZFsvQ3S9K+597dEPSHN8WPU3FrCae081WQun9W+xEzOTQ==
X-Received: by 2002:a17:902:1101:: with SMTP id
 d1mr30136700pla.212.1563214929026; 
 Mon, 15 Jul 2019 11:22:09 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.22.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:22:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 14/15] arm: include: rockchip: Add DDR4 enum
Date: Mon, 15 Jul 2019 23:51:09 +0530
Message-Id: <20190715182110.21336-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112209_867145_B338055D 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add DDR4 enum number in common header.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 55abcdae77..7ac25af327 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -7,6 +7,7 @@
 #define _ASM_ARCH_SDRAM_COMMON_H
 
 enum {
+	DDR4 = 0,
 	DDR3 = 0x3,
 	LPDDR2 = 0x5,
 	LPDDR3 = 0x6,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
