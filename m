Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D82C1B85E7
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7cXfaNn06m/7I2WNqxXV8w6jRtRqmtuOqDheYETjejY=; b=cjhT+gJxbcSmutHWqREUn7xim/
	diV4ELwrVZLMGMf4Es8MKJZ/ReLbffs7833x40tQCYb8LnpPOCwMXgklo1tdCZhpgx55qXJ5cRqy6
	NQVc44VDvApNSr6RvqukE/nvzqfCPCzOdeAi8KRCYSixLW0/g4z73Ac1CKjDsDls5O5PHZjHULYhE
	nYu+mooaJ8nGG5/cobi+VwVbRXE0oGH3UETPAVIwcrNki9dX5FvlbSIbDy7pXwZg4NnVCZkjlz/Ym
	hmjT8NZ19FCYQ6bvCVlf/XNZDDdWNGODZeXDZTdbfsXF9NqPoG+RY/UVC4AeCWGLVbfL9QgSo2QGK
	Wxvo3aEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIba-0006CH-94; Sat, 25 Apr 2020 11:04:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbU-0006BD-17
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so4755679pll.8
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KSjRhow/FzmNp0a4JMMIZ4uuTafzN1q6iJz8aYRJVeY=;
 b=Py6BLBmuvyyXaA3/T5hD3j5v9NSEVuq2oW6+sCEvADYTiWTNbQF4rVO89vnMqBLAbd
 4jZDZ0toIkVL4wsHs4RC3px6UKwnx5vaI5vSLIIH+Dr+OiJPnHlEUaJQBGfCXhxqW0rT
 ZyEsny+JQYR2xuvh2lIXYnJYbJJPCc2j5roSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KSjRhow/FzmNp0a4JMMIZ4uuTafzN1q6iJz8aYRJVeY=;
 b=VsUTnASLeVpArIDWtpiKQSGSYXhowBdGrBLkI0QPQmM9h71KvFZs6WkMPS8ey8JTqD
 PaQBPFhoKAe7iLWDj3+6q5S6QDlyNbd2CAF3eykke+Ig1d9rRgHY28HNfqEjIAyNiAyf
 TP666UzxV99PAOj5XgM0GvPx5ux6A/3vuyYLpAFj0xiZBaU456Bx8z/WVoL/JH76espZ
 x1pkEBPJzFzjxqpsRjcgdHHdpxloefrg30ASeW207Egp+bYloV3P7F5zYKckh+C+ROZb
 cpDbfdUnsoE8PqcbQ0P7GY9w/2U4qyqg5N2ifkd1kR2Bvlh7udaJGrEanvtXSvzKr0gt
 w2XQ==
X-Gm-Message-State: AGi0PuaaX6Qu4AbWA9HhEoeAR4bJP1LWpMBAH4UL40sPwuVPTVTVgIWe
 tUwLiqwbZnYBKVMxwXELqdLMUA==
X-Google-Smtp-Source: APiQypJHYAixOpB1gO6I9NroVL78BgU4cyhAslnm4ZqwQDqjGxqgbqfEM/CP6J7wrbUjiM3c1E9UaA==
X-Received: by 2002:a17:90b:3d8:: with SMTP id
 go24mr11616409pjb.33.1587812651122; 
 Sat, 25 Apr 2020 04:04:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/8] iopoll: Add dealy to read poll
Date: Sat, 25 Apr 2020 16:33:47 +0530
Message-Id: <20200425110354.12381-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040415_002913_38BF459B 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tom Rini <trini@konsulko.com>, patrick@blueri.se,
 linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some drivers and other bsp code not only poll the
register with timeout but also required to delay
on each transaction.

This patch add that requirement by adding sleep_us
variable so-that read_poll_timeout now support
delay as well.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 include/linux/iopoll.h | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index ab0ae1969a..0bbd757939 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -16,6 +16,7 @@
  * @addr: Address to poll
  * @val: Variable to read the value into
  * @cond: Break condition (usually involving @val)
+ * @sleep_us: Maximum time to sleep in us
  * @timeout_us: Timeout in us, 0 means never timeout
  *
  * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
@@ -24,7 +25,7 @@
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  */
-#define readx_poll_timeout(op, addr, val, cond, timeout_us)	\
+#define readx_poll_timeout(op, addr, val, cond, sleep_us, timeout_us)	\
 ({ \
 	unsigned long timeout = timer_get_us() + timeout_us; \
 	for (;;) { \
@@ -35,33 +36,34 @@
 			(val) = op(addr); \
 			break; \
 		} \
+		if (sleep_us) \
+			udelay(sleep_us); \
 	} \
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
-
 #define readb_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readb, addr, val, cond, timeout_us)
+	readx_poll_timeout(readb, addr, val, cond, false, timeout_us)
 
 #define readw_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readw, addr, val, cond, timeout_us)
+	readx_poll_timeout(readw, addr, val, cond, false, timeout_us)
 
 #define readl_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readl, addr, val, cond, timeout_us)
+	readx_poll_timeout(readl, addr, val, cond, false, timeout_us)
 
 #define readq_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readq, addr, val, cond, timeout_us)
+	readx_poll_timeout(readq, addr, val, cond, false, timeout_us)
 
 #define readb_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readb_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readb_relaxed, addr, val, cond, false, timeout_us)
 
 #define readw_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readw_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readw_relaxed, addr, val, cond, false, timeout_us)
 
 #define readl_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readl_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readl_relaxed, addr, val, cond, false, timeout_us)
 
 #define readq_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readq_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readq_relaxed, addr, val, cond, false, timeout_us)
 
 #endif /* _LINUX_IOPOLL_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
