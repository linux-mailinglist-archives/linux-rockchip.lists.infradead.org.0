Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FA21A49D1
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 20:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ5BiAaKHTgshgBYjFtgqwLZA/GdeN9G2qQ5rW/2u0I=; b=chmmUjiMilEVbk
	IxxFz9Gr7qDi0jRgaEb8vgkZWh5faXPuot/6dwTjpJ0oSbNRQXhsFZ3R5YyLYD73WQDU5X1DIy41j
	vW1Rboar26t9yIQrItYU4rUfh90XWcFAVZqqG3VA6Pl1loCIJibjvLdhlyecpTnIZ3xWVuW2HgZ9q
	eTgXMgnChnXvLj4khqDvQD1yUfnNfEC0oKN2DUFzzG+dBcbLkqPOQ9Tg1UePqfq9BcCSpnwQIrDYb
	RUzW8erpKozvab55WoOGoeK8AQn5NvvaPnS5hfnRy9MfZbCGM3rASfYEREvVpiYM9dHXGIssTPXAa
	BjubAnqv/0xCf39IuTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyN2-0005JY-36; Fri, 10 Apr 2020 18:27:16 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyMy-0005Ga-85
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 18:27:13 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z9so1037636pjd.2
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 11:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4R0WqpdYliBRFD6P9shAumdZEaICffalbnt+KRBJLe0=;
 b=LocK4TRuI03fDkY8AakJTCMBC6LP9e1tza+dnQCgzeQVgKY7DumsyvaDx7SDoqbloa
 rJC4WoTHUqSWJV09iDpNLFaMph11/34JAOFXzR3B+w22lKdnTzy0+FvpzWIR+utTw5mA
 orND4Ky+vdWuHJteFs1dI4juoRkh2Z9dOGvWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4R0WqpdYliBRFD6P9shAumdZEaICffalbnt+KRBJLe0=;
 b=ozlUFDdH/zKSn2MzuymsIH8Ontr9fuQNBHBpNLeHD5ZAz/7GYKuNc7cst6XKJPOeig
 W8bwpxSiINrvUyzsZTv/Pik13VEnskka71lXLRvh0pQtlrMrjWDx06lxZYxT5N5Bj/iA
 6WCrSs6jvu4w/UQgQJUXUFq1Tz6+2jodulhVCDYV5JR/vagru1w5XjIXJUSAKVnqZJCV
 40LtXYl0T1EQvq5EKzkMTLk3Y3POK+xDBLHn/811IS07M9vuLCXcJIPtsckqKw1tkXOl
 nevjdc/ldMxyQjok0x1b0bGGJ7bw1FXR6At//1CTJizqO+de6yHJXFdhZpKZon31I259
 YZsQ==
X-Gm-Message-State: AGi0PuauAyB9578JNXkVQELxvH96M/nWbM9qvKt0CYereQcY/ZjYNokb
 cBzU8jpVLwuBHl7WmEW59zS2ZA==
X-Google-Smtp-Source: APiQypLxmT/b5FSPx1ghgyQBX3kResB1HB+BcBm9Ve5qDlTg9IzEExyh8vbbDdeyBJs8hfvQvCO/cg==
X-Received: by 2002:a17:90a:e013:: with SMTP id
 u19mr7092153pjy.54.1586543231664; 
 Fri, 10 Apr 2020 11:27:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:e854:42b6:1a5:a40e])
 by smtp.gmail.com with ESMTPSA id
 w90sm2214694pjj.2.2020.04.10.11.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 11:27:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 2/3] rk3399: Add boot flash script offset, size
Date: Fri, 10 Apr 2020 23:56:30 +0530
Message-Id: <20200410182631.11951-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410182631.11951-1-jagan@amarulasolutions.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_112712_293323_DF722280 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgKHJrMzM5OSkKYXJlIDE2
TWlCIHNpemUuIFNvLCBsZXQncyB1c2UgdGhlIHNjcmlwdCBvZmZzZXQgYXQKdGhlIGVuZCBvZiA4
Sy7CoAoKVGhpcyB3YXkgaXQgY2Fubm90IG92ZXJsYXAgYW55IG9mZnNldHMgYmVpbmcgdXNlZApi
eSBzb2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KClNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCkNoYW5nZXMgZm9yIHYyOgotIG5l
dyBwYXRjaAoKIGluY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3Jr
MzM5OV9jb21tb24uaCBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKaW5kZXggODlh
OGE0NGJiZS4uMDFhOTE3NGJkMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9j
b21tb24uaAorKysgYi9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCkBAIC00OCw2ICs0
OCw4IEBACiAKICNkZWZpbmUgRU5WX01FTV9MQVlPVVRfU0VUVElOR1MgXAogCSJzY3JpcHRhZGRy
PTB4MDA1MDAwMDBcMCIgXAorCSJzY3JpcHRfb2Zmc2V0X2Y9MHhmZmUwMDBcMCIgXAorCSJzY3Jp
cHRfc2l6ZV9mPTB4MjAwMFwwIiBcCiAJInB4ZWZpbGVfYWRkcl9yPTB4MDA2MDAwMDBcMCIgXAog
CSJmZHRfYWRkcl9yPTB4MDFmMDAwMDBcMCIgXAogCSJrZXJuZWxfYWRkcl9yPTB4MDIwODAwMDBc
MCIgXAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
