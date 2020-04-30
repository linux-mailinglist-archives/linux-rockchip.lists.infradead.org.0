Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F21BF0C1
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QFJu2bjV8i7NU50OxJjMNKgpsdenXz+RsB28oyZL6B8=; b=oOWDbu6x+iOMUfhW8QVdx6+2J9
	ehq6ILtYR4DT2E2LHJkjJIlQRhRdE+EhXqzsq7OWugjOGfk2Rt2VyGYPNgGbVYhufFyQWQ187e8XJ
	bc6R7vEzK33IjWJOxHxXOgSpV+m70tOw4aejDB7z9kmVEigcLRu2plxYsH4AHm5eWF/ayLz+yfyhd
	1lUo2TOKYanhTLbiMVjqqirkw6cZMIApSvGJ7MazTNitfoLK+w4qiS8kjFmwEaXtGdsXwVO1+sCeW
	3kyyczVPEbXS1pbidNdg1LO0S/hXG9il90nG2F98ApjtZlGJ2XJAXDXXz09zL4YCjTGfD9SG+Flaq
	Wlproi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3FH-00068b-1O; Thu, 30 Apr 2020 07:04:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3FD-00066r-Sl
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:29 +0000
Received: by mail-pj1-x1043.google.com with SMTP id h12so3289747pjz.1
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QZQxIM9Lp5gBpYd0vuqexfM8OFH70HyOZiX2o76/vfc=;
 b=iY+ebA4CDb9OF+/YPw8g6jHpWsbp5C3gkz28Njb0RR0hesLCnUbSHxOSUNRVedYsVg
 ErnvoRGVtWQhq6sH+2r7bQkQ6IsaxwDze6xIneaH00mF+kS3oBxfrqMErT4YR6yKBCLA
 K1V046ufPO+B7HaXz5KTh0prOIfG8vDpNlesg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QZQxIM9Lp5gBpYd0vuqexfM8OFH70HyOZiX2o76/vfc=;
 b=iN9O32jZlUe4/3kjGa6AOxcSRr7xNn8GZZU2DbjIAov5sXOLamOG7SwEZ9mi0Izt1D
 2r5mPzHfFr/f1AIE0xpWWpIGy+MnAjNsLpozT0F/JCAi24CXBAGEpHYy1EXP6hDmXeX6
 FoeD6lIj+0lPWsFkAb3/IuAfMzHn4Ofz78hP5VUAUCTyRfU9M7NeapLUtGmy7mTNtDf3
 +PKWuKVszmze6fT6yZ7jvepzlzXsIEBhHb6SOpt8809XiQcg7S3IvtoPgRu4BhBtnvHu
 i+ZTUCRqemLPF2bCaBclg3d+x6CR52Vv+TPC6PxgBSoANGBFGFSZvxqDwzPRlKIoK3Ph
 umuw==
X-Gm-Message-State: AGi0PuZs8fWbWAulRArcX2MSdBWagPT9SwrKA4n1V91aHjZxwQr4FCE6
 tYl6NG9TOkuos43d8JXOgZFaGQ==
X-Google-Smtp-Source: APiQypLKYFQB/YTkxNvf23yqX8rVNrC4fvi2+ZbgRyE1HUnYKISw3o3N8KHXT0CMhV5j5nspU21+Zg==
X-Received: by 2002:a17:90a:fc8a:: with SMTP id
 ci10mr1307246pjb.152.1588230267082; 
 Thu, 30 Apr 2020 00:04:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 1/8] iopoll: Add dealy to read poll
Date: Thu, 30 Apr 2020 12:34:05 +0530
Message-Id: <20200430070412.12499-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000427_947695_3E713967 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
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
Changes for v2:
- none

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
