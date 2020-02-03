Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E13150344
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 10:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wMbQ8APN0e6UTV5AbTwUZOqgg/j/y1yi4DRQZ3Cg/NM=; b=n46mbsiLhWS71l
	jWRGxqcbh2xaUTJN7TN8tkoVai6mZvu+74wX326nCDp+6wCg6WVmd9nOv+/D15ciQEpsKXulDpLts
	cFTerCKPZ3eba6tHKgxuzy+lNDAdYY74NM1l2hZRRmpA5G6/UOQVxFfs5J0E2Rz2k3/qbod5MuLmB
	7bzOx7Jow7QnHQfCYtqXKBrSGDx9g8OZM4712kPuxRQLgX7ESaYfMRtWCJwFA6BeT5k/s8scr2YZS
	J8Iubq0P8NPbgPyFgSs5jdHB/a4bFsiHMGtXGe+fbJqJMmt/88ZjXgEYdVm8byrrUJz+xfs16Jevp
	kfdazDDxbexvayM3wXdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXtQ-0000uO-PW; Mon, 03 Feb 2020 09:19:44 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXtN-0000tY-4n
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 09:19:42 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so6134529pjc.0
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Feb 2020 01:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KrEOf2RWwYNFbhGzPdZ9kcko1qdFahrtFrFx8lHe2qU=;
 b=QUBn1HOBtoCVH4AXUlm3iVYkIyo+vF3uIzlKcYBnUabjQfQhu8aSd/TsvLKCRPBhL3
 2n7/noy1XQkE7d7y3q/nS1S1Tleoe/J8zDOmqsERSEAmXRjfaw4JZGTTG5qUg6IWb9+U
 nyfrDhABv/ArAylMrX06RcNyPjUvDf+d+VmCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KrEOf2RWwYNFbhGzPdZ9kcko1qdFahrtFrFx8lHe2qU=;
 b=kswGVHueieHrpZ6SzfxDJk/QQ8Ions+eOFqMEay4triFwHRH6/J3Q4axkUus0bAx/F
 kDBQ2Vb05okHGCYThxScwIr362y3mBq8Df6QVy6E2yNF7sDs+7AYSVoj06mrClX55KnR
 hFdVlQEAJNNugSZ/AAprqC1F1vxVtmCyyJ4HYeEGVuZHBMD66FHYGsFUVwCI73MaMPHg
 W2JxC5Adl8h38r/oFacZwmO+Oo+V/zpbnwYUP2XQUnCyAalfz4ofYkZ81NwoA4R2a1oM
 V1JydHfSsd7NWOmak6ziNOJiU3lfLuZTNJRCqLDuRzU8KkmeQbTqnz1Q+Gg5s2PwB9xe
 2a8Q==
X-Gm-Message-State: APjAAAWSNybszwkgPWw1xeZMJnsdAu5t9v6j3N7gwWIDLs9k+f+TXk++
 qdfdQI9tCU90MteAf8u5M/WtVg==
X-Google-Smtp-Source: APXvYqxr8fNczV2tsI9wZJz/HqN4Z8ckIPwjOBI2NskruKVvIARfL4Xx/Qt7YgHLI5z+Q8mb4aQRKA==
X-Received: by 2002:a17:90b:14a:: with SMTP id
 em10mr28344453pjb.4.1580721579993; 
 Mon, 03 Feb 2020 01:19:39 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.24])
 by smtp.gmail.com with ESMTPSA id w11sm18828318pfn.4.2020.02.03.01.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 01:19:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/2] rk3399: Add boot flash script offet, size
Date: Mon,  3 Feb 2020 14:49:23 +0530
Message-Id: <20200203091924.15385-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_011941_624345_187F896C 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgKHJrMzM5OSkKYXJlIDE2
TWlCIHNpemUuIFNvLCBsZXQncyB1c2UgdGhlIHNjcmlwdCBvZmZzZXQgYXQKdGhlIGVuZCBvZiA4
Sy7CoAoKVGhpcyB3YXkgaXQgY2Fubm90IG92ZXJsYXAgYW55IG9mZnNldHMgYmVpbmcgdXNlZApi
eSBzb2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KClNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCiBpbmNsdWRlL2NvbmZpZ3Mvcmsz
Mzk5X2NvbW1vbi5oIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggYi9pbmNsdWRlL2NvbmZp
Z3MvcmszMzk5X2NvbW1vbi5oCmluZGV4IDg5YThhNDRiYmUuLjAxYTkxNzRiZDIgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKKysrIGIvaW5jbHVkZS9jb25maWdz
L3JrMzM5OV9jb21tb24uaApAQCAtNDgsNiArNDgsOCBAQAogCiAjZGVmaW5lIEVOVl9NRU1fTEFZ
T1VUX1NFVFRJTkdTIFwKIAkic2NyaXB0YWRkcj0weDAwNTAwMDAwXDAiIFwKKwkic2NyaXB0X29m
ZnNldF9mPTB4ZmZlMDAwXDAiIFwKKwkic2NyaXB0X3NpemVfZj0weDIwMDBcMCIgXAogCSJweGVm
aWxlX2FkZHJfcj0weDAwNjAwMDAwXDAiIFwKIAkiZmR0X2FkZHJfcj0weDAxZjAwMDAwXDAiIFwK
IAkia2VybmVsX2FkZHJfcj0weDAyMDgwMDAwXDAiIFwKLS0gCjIuMTcuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
