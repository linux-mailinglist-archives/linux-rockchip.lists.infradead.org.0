Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951B41589E
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 06:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=POhV54m/i25cnCR8B0X9nD94kkQqGsjCerst2TDB3Ak=; b=JR5JT44tcBQzf2
	AP40fD600rbTs/vZBJxODKyLZB0yBWfZbrTVARHfdJabd+W5/Dx6NDttmcn4gw1mM3YN/kYo9xXS/
	FI9lBdVPIkUV7pCqrf0gHJYoHG9gduu83C8DhACZwayblcVAS6BZ7OCTr2DN8UeKGrK5ssP8F8X1x
	FTdHkV+/BoSv3bzawkamzphdtgy/sCq2JkdHq190AmNAwQA3am0EdFNwKmhb3U1Ckv+OeCGs7T1rY
	UD6OUMrGASDNyYn9CgLvLfy3K3YLu85G24qTMKHwn6rRl8TFH4OAMW9r05wUX6T/2Qt8nsOHanP9K
	8vH7W2riq47zsXMUHNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNs1o-00018p-VA; Tue, 07 May 2019 04:48:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNs1m-00018T-4v
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 04:48:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so7503995pln.9
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 21:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bkdv0bUN3uopdZ00bPbwW8foVdMqDPZsqAqI6CV5JHU=;
 b=hdk78+Yi6w3qCScDwe7QVwVz2ekqRUjtsoEjuwEU7r4V1tbmquogaZCIXdSxM3LyOZ
 Tn9jnAKT8lIwhOPmUOqT7OO5Xg7NLD2fQp9XRWg2f/JCDvpIZAB/OPAPRlkciycca7IS
 UzRCgI676utKBb8CLfvuY9n8AXprbI+sFRJGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bkdv0bUN3uopdZ00bPbwW8foVdMqDPZsqAqI6CV5JHU=;
 b=SiL/DTs98qVnTVdiKiIXjp/WAByU8LkREUt/LrC+m2ceA7ocI+EvmEYNX/JIYnSV2a
 7QYzfyeCRCOnW9L31X+Z4gAedOSdWA0usJxmPTO1SWB31BpvDXqhrDI83oy6MvKUWO1o
 Zc49dEgig9w2jKfD37FqYHYoUV6NCQa13Smc67tRqxQs6lKxONhLPcHkP/F2ZNgG14Dn
 abVVRP57/7/SfboZIV5CqTZ412VdHvhTv89WihhaxIsicLZ7rA7J65A9laScRt5eEzqO
 B44IilzHeSSeTGkcEx0DygXWFubX4zb8hAlW4l+pttqn/X5lYpgljLrjFIFDKF06k3ui
 PzYw==
X-Gm-Message-State: APjAAAXD44u6oLACSGxyCTmtcylhpEGQuy+6g0CUW5Epl6bYc1SqwNue
 6EJTtwZDeRdTeTjDneBpLOz0Cg==
X-Google-Smtp-Source: APXvYqwWA001dZpEA2DWbP4kSMexNIS+bd1oqMMpvY+KncWs/Pp2prHek40GJdI/BJaWgi2oZzheXw==
X-Received: by 2002:a17:902:f302:: with SMTP id
 gb2mr37496476plb.162.1557204508944; 
 Mon, 06 May 2019 21:48:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id n188sm16298641pfn.64.2019.05.06.21.48.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 21:48:28 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
Date: Mon,  6 May 2019 21:48:01 -0700
Message-Id: <20190507044801.250396-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_214830_214487_405516C1 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: devicetree@vger.kernel.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, groeck@chromium.org, jwerner@chromium.org,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We'll add a dummy to just return false.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 include/linux/of.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/of.h b/include/linux/of.h
index 0cf857012f11..62ae5c1cafa5 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -653,6 +653,11 @@ static inline bool of_have_populated_dt(void)
 	return false;
 }
 
+static inline bool of_node_is_root(const struct device_node *node)
+{
+	return false;
+}
+
 static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
 					const char *compatible)
 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
