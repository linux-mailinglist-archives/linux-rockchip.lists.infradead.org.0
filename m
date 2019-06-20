Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FC14D9D6
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv614U/joERZJSVjqxq3VHbj4BknqtooLwwTB4lUer0=; b=FY+Ic/Cx5MUj+p
	wzCl7fFN7Jfptr/QVa+vWRxOPy6lpQ8XcDaUv76UdKjwEd6J8+vy9ANws9yk+4i7a4hJ3RDpqN09+
	CNpgSVXWRp9Rl9fk+sKFCtfMQHD6fbW91uNYNauxEt2GqSeYRw77W168bHY/0zneri4urkC5WCdDS
	DiB19gd9pUV23bPfawh5YgtYknu6HzP/A2F2aulirmj8h4jpnvMk+bmmfGcvIPbSdv6TzOOsfFJzK
	u+hq8WBAhb4HgRVKjc85t5k8eyuDHspPP6rmvCQwb4qMybYcDr1X49HeRBWUJ6jHF5gynmbee16MT
	ypbDcigW/iyewV2iXnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Dd-0002up-VB; Thu, 20 Jun 2019 18:55:33 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Da-0002s0-2t
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id i189so2158154pfg.10
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VLoJ5MKcmskZ9kyymQs6hc6FXGkkC+C7DZBiQC4cJ1Q=;
 b=VdsZqfuIQgcQqqQFpVLn3hDz1kB4VJZYKmZ/zXybEamlu7EPu0aNOyqstiQx2RHFdv
 qhTFUgQq8GXuH/RtQxYToogFkXMDKMQmOBHw2UtuZDFNCYOogI0AmLz8iYSRj5Z6iSlF
 Jaqi2LPJDoopvph5S72hppUSRi6bL2KSo9npU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VLoJ5MKcmskZ9kyymQs6hc6FXGkkC+C7DZBiQC4cJ1Q=;
 b=VrhUy+MiRN+Owcvcy6Ch3f9D8Nec7agg0vElzP7s7GgrbOmclHnDPiO+f5fOQwXG6K
 nK2zZlMn2KAyiDvF/OLvLU+YaPflB5oGWC3d3g9NfnrbWsPfavgyZGYcEh0kQPoTp+or
 KI/EkZfD7Jtynp5ZMonRLhlbQ1DwitXTCKNgrBrMVTtuc8stjLX6IqDY1LZWJr8q5aVJ
 zTH+tl4e98LRvnPg6aFLf+1Y4pp1x5Q21exzx77eFvAcWm/T9C3Od3Hnr3NfQNiXnyKy
 FGbsTBHr6WzdMYBR6LfZlm0CEIBMz01dkCmYesGUrZ1SGAGviyBIxP5igvFKJhaTgN3Z
 wNSQ==
X-Gm-Message-State: APjAAAXR84O3N8BV74kN2sBPtH4Ajsvqr2KHADQuUgFlf2hd99nXWkjd
 SWfv0QyaIchA3t9UgDrU7RBivQ==
X-Google-Smtp-Source: APXvYqz7LjL122xz1xSpnzhUJWvQk+MH0tQNYY4m89wyUUJCfVjdyuxoAmBYyPmh/jdFtph1XjB9sg==
X-Received: by 2002:a62:2ccc:: with SMTP id s195mr4767061pfs.256.1561056929497; 
 Thu, 20 Jun 2019 11:55:29 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 3/8] rockchip: rk3399: spl: Mark printascii into debug
Date: Fri, 21 Jun 2019 00:25:01 +0530
Message-Id: <20190620185506.11449-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115530_153626_8393A2BD 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Now, we have spl_board_init with preloader_console_init that
indeed show SPL banner.

So mark the 'U-Boot SPL board init' print into debug.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-spl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
index 65c98b697d..890d80025f 100644
--- a/arch/arm/mach-rockchip/rk3399-board-spl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
@@ -164,7 +164,7 @@ void board_init_f(ulong dummy)
 	 * printhex8(0x1234);
 	 * printascii("string");
 	 */
-	printascii("U-Boot SPL board init\n");
+	debug("U-Boot SPL board init\n");
 #endif
 
 	ret = spl_early_init();
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
