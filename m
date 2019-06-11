Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109B3D006
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgAt+MzdO2z1oHrlOcq8crrOi3NHLrdiD4BnTSz9o10=; b=Woy78MDyDUeVOh
	Nb1cG8kZL+rQvZLWVpexQWsyOSW1QERZTabXChUyq82DLU7V/tjRSXqPsucf+hxxR715+fNHQ9Rqr
	p2nXwl5kO1o//UG6Xndk22Y18i0Oidbxn3heCVS/YTZ0pXoxpyiYNUpQH1Qj+9xloy68mVHuStKVs
	iGsBluCQOZKc+5L3OPrtcOu+XPPHBH8VuvHR2e2KMXG5vfKROkxSTSZYFrLrN9inZVRloqp76N1Hh
	uOilQQ6MQlYWZp9/2On/Dr1N6kP4B6b/tUhSJ8cVqV3uuTFjDOYM+nsZneqlgQbcR7GJfOky4CtF3
	29MuEh00+eX1c1NQ2Ovw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDw-0001FA-TU; Tue, 11 Jun 2019 14:58:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDe-0000ux-SX
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so7086327pff.8
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=svPyKMC7agKotsKXgXx/yVThlFKQ4oONT41qq6LCJJI=;
 b=Sh9CQ04RK3w9kYM2R3TNhbn7x/0qH7DJdmuKlt76y1yz4t+t/SItwVAvxmUMMmUNn7
 ptYpctOKCZQSHPLmzRJhxj2puzOtKLdno55NkaeKyQjUkjZzF0wZ6HEi2pJxRLkgEsel
 LKzaqVxvjowBG7V9dKjSiwX6QXphsL0MRCbig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=svPyKMC7agKotsKXgXx/yVThlFKQ4oONT41qq6LCJJI=;
 b=JPAMesOfJRdKt9JQAgxIcjRoO3li/LxHj2Q7Q6JwcvxirOE/4O23tHhJwEYMwSJoGA
 cQE2HFuP3VaPW8Gj0ex7PffMaPrIvCuxeDw/FCjvu8EQ4WFJiedj4efb9kMeZ7uWoIfb
 yFi0UI6oA0/43fic4LOYdmw5nePW3fHRuHX3UO1kpYC8TCJdrSXbvLsBhIBfdd8zTcI0
 vxa+gXdbsNAjZnG/KvJn51e2xxIeZJF/4BvxfKsxFZQHvdwl9IoDHbEQYwTW+C7MHzGP
 xSDPdSM+Lho3I8ZHz6UTw4G4M+PWACDJXRx0E97GjAxv2t3VkjfNq7xmRjHPE3q0aVAM
 tQnQ==
X-Gm-Message-State: APjAAAVZLLl54xldmY2qoGOWv5nTfcfpQeje3wtKZDjSQmWsU/3zzvDh
 7VY1koxViulIP50lswpItrhaJ3BAEpw=
X-Google-Smtp-Source: APXvYqzy4Cwx+rGh5eJHgYYufe511H9x5O8W6NUKssB3yO82MrLbi7OmY2kPg3RmA5/DkKxZ1TsXfw==
X-Received: by 2002:a17:90a:22c6:: with SMTP id
 s64mr27680172pjc.5.1560265070339; 
 Tue, 11 Jun 2019 07:57:50 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 91/92] rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
Date: Tue, 11 Jun 2019 20:21:34 +0530
Message-Id: <20190611145135.21399-92-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075751_336706_D4567C70 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
