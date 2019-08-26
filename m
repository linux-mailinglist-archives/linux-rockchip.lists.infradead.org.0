Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DC69D5BE
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMUs60xP5ZGgkuuhE4mrCi8BCC7NNRGPJK+l4riDEdM=; b=HyYyKSrcFQ+APB
	ExtqEa4qfwqOAav0iu1LIzeBfYHsk0Kp3aus0wNGkcjeaItb0VV4vd3YA3T5u2UbUKbxtDRTWBUwv
	V/PAn2WRI8QBeOi4DaNt6Wu7lI3y7Tgv+B+mwJNuQhkVYHBHOLe2pbVUMvfllZSJpmhKUq37VrdMZ
	svFytZAqMoJcTXI30ZnYxaGNSYZichc+AXzNPfZYPEe4Ug0RSjnJ48XSSnzVDUFbNgFa/GPmXelqr
	a6h67CsFVW6e/S7CL2PvwPFS163zydvjYvLWz7xANK/itbHoj7y1gGFdG4rg8Xrc8idJs0sx7Zs3K
	kpMEA7KZB+/640OzGJ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jcr-0001qE-7u; Mon, 26 Aug 2019 18:21:57 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcW-0001Vd-1j
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:37 +0000
Received: by mail-oi1-x243.google.com with SMTP id l2so12884370oil.0
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jZTZrBBeRsgIagLVhnCtIjXbWsyubZYVGeJG3Ec4F8E=;
 b=d001+P+0aUZBLAkPxYtD/Q6XdAwdkwO763LxNH1AoTpwl3Wcc/eb/J6RHSjh+rqt+T
 YcUprHNiS7eKam9s2krfm64lUMP+loO+az7Mmq/jfw0D8Epi9r/j5ptkxx/tbwZfUH98
 D9eI5LZ7l502uPao7Nj8844//5J1kiJFMFHB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jZTZrBBeRsgIagLVhnCtIjXbWsyubZYVGeJG3Ec4F8E=;
 b=UYRQgFoEwuorMELI5id/64y18fB/FZZmQDb4g7wbCfhJYwnJwuaUKs6Lrnm6zsIWiq
 KTXCWjt31HDdFTplTaxgysEXyWJcQGhOQLM0KEmkoCar1gJAPfATB/Xc0vGGbhHBwGBM
 ftPy76PER4OG2dDW/rbqV3v9f3J42483DuDHSwl6hE7fzXpkgx2i/94iMvavMwoJGS/K
 iIuud5LrfqaU+YE7IQFRVIIfzR8O5OTWndqQVlyKMG+UlrM9vM2P9mHuPBuSIdEz6por
 Gm/fPu2wJa0nVWcAaAtUxaxcNCZ0r3somBSE+btsucjoTqGycm1thD6QWLmYm8CS0W6l
 Xkjg==
X-Gm-Message-State: APjAAAX9h+MYHSC5MnbVQCYcwhfL5/9cT9EPq8KdFsBbs6C+Qr1CD28p
 hjk5X0NIDaAJ5iiVLBWY0wlj3w==
X-Google-Smtp-Source: APXvYqyPrb9fpDs01HJ5B8Rn57dA7dR4hANq+mIPHM7D5Iv7GQrczqLy1QzBfH3kbnGZJVwOfN9Q3Q==
X-Received: by 2002:aca:2b08:: with SMTP id i8mr12835817oik.31.1566843695319; 
 Mon, 26 Aug 2019 11:21:35 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 13/16] watchdog: Handle TPL build with watchdog disabled
Date: Mon, 26 Aug 2019 23:51:08 +0530
Message-Id: <20190826182111.30999-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112136_104229_C48B2A96 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch handle a checks to not enable watchdog in TPL,
if TPL won't require to enable that.

This is useful, in rockchip platforms where watchdog would
require in SPL and U-Boot proper and optional to have it
in TPL. So, without this check, the TPL build failed to get
the watchdog_reset function even though the watchdog is not
enable for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/watchdog.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/watchdog.h b/include/watchdog.h
index a4a4e8e614..f04e3e7c4d 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -51,9 +51,10 @@ int init_func_watchdog_reset(void);
 		#if defined(__ASSEMBLY__)
 			#define WATCHDOG_RESET bl watchdog_reset
 		#else
-			/* Don't require the watchdog to be enabled in SPL */
-			#if defined(CONFIG_SPL_BUILD) &&		\
-				!defined(CONFIG_SPL_WATCHDOG_SUPPORT)
+			/* Don't require the watchdog to be enabled in TPL/SPL */
+			#if ((defined(CONFIG_TPL_BUILD) || defined(CONFIG_TPL_BUILD)) && \
+			      (!defined(CONFIG_TPL_WATCHDOG_SUPPORT) || \
+			       !defined(CONFIG_SPL_WATCHDOG_SUPPORT)))
 				#define WATCHDOG_RESET() {}
 			#else
 				extern void watchdog_reset(void);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
