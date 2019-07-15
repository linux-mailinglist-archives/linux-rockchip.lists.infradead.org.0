Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9C069AD8
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJavpoCR5e08++zN/pne00JhDFQVEHQP5X4uYrVIcOA=; b=OuMslqCYAWqvAh
	xqg7WLRYfJqmtQu7noMvfaE/o7N3TdUuabUnV0OPE3TUUaHiU2Qq+5iGKJnNHGGR6hMLk/jMH9+9m
	WTMUwpjiFwE6x5G/w/V2JoXEfdku9wEYrYwXX0fO72dCjqkaeW2mXcoxjRoQLuGSyPO/WY+yfAkrP
	TDSGBj9Tps3U+M94qbxkBfRle6KVNJ1NVNmv33gUTHjI8DsgHBLmhnnyqQnAvZDU7La/ZHYkm8aXA
	qUhxJYgp4LDM0cVnEQzRomqDesbaaMgIESJvAW3tvWuukG5aIBPojzwBo7gVh9ksdWgT3UliPOdY1
	ROfGR7Hrzfih79GRPDAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jQ-00018M-HE; Mon, 15 Jul 2019 18:29:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jI-000139-DL
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id s1so1807918pgr.2
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=qkxC6tw9q/iE5Q/wGcgr4yNQUnfn3SNT9ms/lMZ/JVJ02uYS6SpPVqo2hJlU4Fn5hv
 oFtkDd28/41jyg0UypB0ty4rgr7xnFJLRA+u6t0VhzjPzn0/ERexpt0BYPiUrMYjkRV7
 m7pEbtl986q2r0GCMxx3ckV/Uk33eMKXviO1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7B3tbjY3n0ai6z9ObJzMBT9vy+XRoJe3mWhFKoigG/c=;
 b=o5yAy77I06xxpa+gDfNQYeJ5Nn1cqW59NWkaA+mqF5jAZKigwyIrkOL+kRzJcu6g6P
 wSybi15n9oomH63t9K8Eam0VxMyoQeWuuD0PMak4qW7f4AFzsK3+a/Mw01LVtw/W4GE0
 2AjKkpwxHZSGorm1dHOm88EHBiDoScaI3HnYDyOxHsFWkM7vciZloK1l74w7ZuD0DqKC
 FQsUDlYv/2diuWkJZOhxThFqsyR6ClT36ZCwB13kuLM2vinJh4KQhAt4llZydhZrTd9x
 XIxvlGL1L1EvEMYIVzXB6LWGEItp7OkNwT6v/02L5/OqIvE9MCwkcyabaa4adfnNqO6c
 JboQ==
X-Gm-Message-State: APjAAAWLMLvcHWSoXah3jWudl9G35Jtdhippz/wyJ6fcnCYG75nHqJ81
 X+5Iw0cQD5kLnFYXcLr8K7SfIw==
X-Google-Smtp-Source: APXvYqz1ots+2vOOVy/KYB7tHZX3DH1JfKKXKm1GTY86M6Bq4k3WY69/eZemTRam3Al0V7T+3v4j5g==
X-Received: by 2002:a17:90a:c58e:: with SMTP id
 l14mr30620239pjt.104.1563215379950; 
 Mon, 15 Jul 2019 11:29:39 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 09/18] debug_uart: Add printdec
Date: Mon, 15 Jul 2019 23:58:47 +0530
Message-Id: <20190715182856.21688-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112941_186262_85F2E0D2 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add printdec, this would help to print an
output a decimalism value.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 include/debug_uart.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/debug_uart.h b/include/debug_uart.h
index 34e8b2fc81..cd70ae1a04 100644
--- a/include/debug_uart.h
+++ b/include/debug_uart.h
@@ -104,6 +104,13 @@ void printhex4(uint value);
  */
 void printhex8(uint value);
 
+/**
+ * printdec() - Output a decimalism value
+ *
+ * @value:	Value to output
+ */
+void printdec(uint value);
+
 #ifdef CONFIG_DEBUG_UART_ANNOUNCE
 #define _DEBUG_UART_ANNOUNCE	printascii("<debug_uart> ");
 #else
@@ -170,6 +177,18 @@ void printhex8(uint value);
 	{ \
 		printhex(value, 8); \
 	} \
+\
+	void printdec(uint value) \
+	{ \
+		if (value > 10) { \
+			printdec(value / 10); \
+			value %= 10; \
+		} else if (value == 10) { \
+			_debug_uart_putc('1'); \
+			value = 0; \
+		} \
+		_debug_uart_putc('0' + value); \
+	} \
 \
 	void debug_uart_init(void) \
 	{ \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
