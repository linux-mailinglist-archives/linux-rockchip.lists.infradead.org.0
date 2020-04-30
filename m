Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27EC1BF0C4
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xbHyV/B0gkTDCjfHNJsNnYqHZ/JZ92Zk+vmYovRlivo=; b=mQ+csmnJzRFyu4i/n1AGBGp6Ni
	TeaYsiraEqy5wBShTomMsw4yVNACsCv1MxG0z0Nz2MbJbUsZTJs8CbWuFAAPF5rOEJNIUrlKWPXrX
	1bvlV/GZqvWnVYVOBiT5OlItXjZN3ssuZ4Pq2FNKKSXF3ezf/XXJ5PjTmQFTgivynC94VrL4V1XI1
	4u6BGEvSWGjJoKg2sZOIRYVYw9C9ZpD+hv45ZBlNnZ58onP30aLfIeLMO6g6I1mp/CJ54b0pyNhDT
	8IytxN66khD9cqqaMtzLAjL7bqSqJZbXl3fPANCqEECPLVgarU2/YZrRJJ4hF//u5oQZwT9G/8bYD
	cil8jjPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3FL-0006Bz-4e; Thu, 30 Apr 2020 07:04:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3FH-00069r-OZ
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id h69so2327554pgc.8
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WWOeoV6bRuBvU+8GtDUel9zwEhNvk1uDDmzUorUI6o8=;
 b=KwiLAQPZGynBs17PqTpphO8ojKfAzjUzO2OCPZjWFV0l6PsejisLpGcBfA6BfvC67A
 YipI3cqXtd3bBS+GexjrEs7mgupsQOAoRVHE3yvpBG4zRSrbHgvI4deyZsV3NqimWcWo
 CBZjoID8rwl/8pGTw4sXPBNmAMvtQfeLNincs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WWOeoV6bRuBvU+8GtDUel9zwEhNvk1uDDmzUorUI6o8=;
 b=YdJBPlmHnZWtI8B+DnwOpRq+6hQtbtQjPNkyjTNFd+gZtH3lV6ewnrsRkDVxE30tO9
 NmWtZ1KagOLgsC/8EapZFkEt7HhfOF/aYQIlQHZf2xCSjVUqOq5pc/ViKhlomBSdkmIk
 /J0IqDqV09RMFuVvb1b0g1BG9dwg81r9FsnhFXhssMHUkfh5hVZJv1y2wpgC6WKCXOtC
 UmKSbynZX8TKG5AwGkq0RBOl2c4/Nq0+V69KyRQcb/XFQpXBg7MgC4IDmkwYV9Hnjqxf
 Bh8sdlf3uC5z6UcQHPRBH8bPLymaiWb1fGSFBSBnVWYddEUGfdpbOd+tjn1MSS9xCySB
 CvbA==
X-Gm-Message-State: AGi0PubwiLdVwdJm6e6rn3XwHXlyKaQGJOShHSIRaYtA9PXvKZObvFql
 Jb6HMIwCAxMNiMX47jWkZeGOXQ==
X-Google-Smtp-Source: APiQypIlCtSORDv7Jkd464ZO556svqyh6DvskNyr4ekvULPN+HyY3C9kkdD8towaTr975c7zrhbA8Q==
X-Received: by 2002:aa7:957c:: with SMTP id x28mr2091592pfq.31.1588230271132; 
 Thu, 30 Apr 2020 00:04:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 2/8] iopoll: Add readl_poll_sleep_timeout
Date: Thu, 30 Apr 2020 12:34:06 +0530
Message-Id: <20200430070412.12499-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000431_804825_56CD1336 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add readl poll API with sleep and timeout support.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 include/linux/iopoll.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 0bbd757939..e087f23271 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -42,6 +42,9 @@
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
+#define readl_poll_sleep_timeout(addr, val, cond, sleep_us, timeout_us) \
+	readx_poll_timeout(readl, addr, val, cond, sleep_us, timeout_us)
+
 #define readb_poll_timeout(addr, val, cond, timeout_us) \
 	readx_poll_timeout(readb, addr, val, cond, false, timeout_us)
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
