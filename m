Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B381C09A2
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPLYG/235JYOmrUZVRACLCoP58dTOo5yiKuro/UjUw0=; b=eXQDkCw8PFgFiW
	SbY3Q5XxJGcTilzUFxmKjKpRDojURa0CMC4NiAoMgWM4EmUZsbx3FHWpi6HPw/m36ag0rjidpiDjs
	g5sVHG9FMVJLrWNhEkIxOXFLL4AedHefLdAIjCTjM6cdS44owjSM5FcJi6501Ol00Kx3t9atlMFJr
	sjoQ06d52rBFLwWYa2pKAYwrb13INb8Z0hrxgb5ii2Kv9+9j5tJixedvC/gWqEeDMUcdbPTIuEyrN
	DchTiXwTcYTNHz8WvtHKSwoUkvddPg3MVFEMRm8+i4emkdBsFgdqYXa9X8aBBA/gzN1cWFreOHpXT
	Ywr9pCK61VNnDq3ILJAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0Z-00079G-K0; Thu, 30 Apr 2020 21:46:15 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0W-00076z-Li
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:46:14 +0000
Received: by mail-pj1-x1042.google.com with SMTP id hi11so1452029pjb.3
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O57oZmFtIDGFaxieo8Ue9ldC2XvrWM9IRe2TgB3VW1I=;
 b=FjlRFlzNjJ4QTAz88BGvH8yu5KbIB7JZ5s9l4AsGwaDA6lHpuaU/KA1T1PzocQgiZe
 qWy6qC7pbGdcHvNY3K+WotxKwPtmRtwFpDN+cE/1YgFYmYQFp11pL0WehBKdmv3hAIak
 /EapCJDMQiwfzjUGrWFPVFVWyEWVM4eloWeFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O57oZmFtIDGFaxieo8Ue9ldC2XvrWM9IRe2TgB3VW1I=;
 b=UGJjjIoS4AaQrD8F7J6ml7IQ+NL+PX2d6VAUiDyGVbF9yqhGVZnq1+j2wOl4mTRz10
 rJc6LQUEuvI+34diNxZdJxRWpXB3wGvcDdyH/jRFnAaxkVYyAVp58WTEiHYfDV2ImyU4
 4VShk6n9HrdXKkb6YWHYtRQiLCF2reoFFCByViidVdbK3ds6ugky7yVGbagVev2CDARW
 eJRCNQ2n7ObjdQ7OOlet0/7N5bjMfQcgBC73oSqzJPACZdQNW7bs3i7znBj5bDDej1DR
 uu6uYoCFE+DKX53WcjU+H0SBoL1GusmVA64T3E6cPriA6QR9XzPvbPu8tVM50UKZi24y
 U+4w==
X-Gm-Message-State: AGi0PuYBk/k/vEbgNhPHi1lo7jw8milVfqu1zC4VwRJg9r7gYT8PuAXa
 2fhj3D6boNb17O9zn8vFsgkqhQ==
X-Google-Smtp-Source: APiQypLzM74/M2BaKixpzy6nbEGMLTrFmBjhc1AhWnvuSaZkp04y6tBVsDpfPjfapjCX6BqCriwYTA==
X-Received: by 2002:a17:902:8202:: with SMTP id
 x2mr1084618pln.287.1588283171707; 
 Thu, 30 Apr 2020 14:46:11 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.46.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:46:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 5/7] arm64: dts: rk3399: Move pcie_phy into root port
Date: Fri,  1 May 2020 03:15:27 +0530
Message-Id: <20200430214529.18887-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144612_719842_C4DC40EE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

WWVzLCBUaGlzIGlzIGNoYW5naW5nIHRoZSBhY3R1YWwgZGV2aWNlIHRyZWUgcGNpZV9waHkKc3Ry
dWN0dXJlIGJ1dCB0aGUgcHJvYmxlbSB3aXRoIHRoZSBjdXJyZW50IEdlbmVyaWMgUEhZCnN1YnN5
c3RlbSBpcyB1bmFibGUgdG8gZmluZCBQSFkgaWYgdGhlIFBIWSBub2RlIGlzIG5vdApwYXJ0IG9m
IHRoZSByb290IHN0cnVjdHVyZSBhbmQgYWxzbyBQSFkgcGFyZW50IGlzCm5vbi1QSFkgdHlwZS4K
ClRoaXMgd2lsbCBiZSByZXZlcnRlZCBvbmNlIHdlIHN1cHBvcnQgdGhlIFBIWSBzdWJzeXN0ZW0K
dG8gZ2V0IHRoZSBQSFkgd2hvc2UgcGFyZW50IGhhcyBub24tUEhZIHR5cGUgb3IgYW55IG90aGVy
CnJlbGV2YW50IHNvbHV0aW9uLsKgIMKgCgpTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBhcmNoL2FybS9kdHMvcmszMzk5LmR0c2kgfCAy
MCArKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMzOTkuZHRzaSBi
L2FyY2gvYXJtL2R0cy9yazMzOTkuZHRzaQppbmRleCA2Yzc3ZjI1ZjIzLi5kZWE3NjAzMmJmIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3Jr
MzM5OS5kdHNpCkBAIC0xMzk1LDE3ICsxMzk1LDE3IEBACiAJCQkjcGh5LWNlbGxzID0gPDA+Owog
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKKwl9OwogCi0JCXBjaWVfcGh5OiBwY2llLXBo
eSB7Ci0JCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1wY2llLXBoeSI7Ci0JCQljbG9j
a3MgPSA8JmNydSBTQ0xLX1BDSUVQSFlfUkVGPjsKLQkJCWNsb2NrLW5hbWVzID0gInJlZmNsayI7
Ci0JCQkjcGh5LWNlbGxzID0gPDE+OwotCQkJcmVzZXRzID0gPCZjcnUgU1JTVF9QQ0lFUEhZPjsK
LQkJCWRyaXZlLWltcGVkYW5jZS1vaG0gPSA8NTA+OwotCQkJcmVzZXQtbmFtZXMgPSAicGh5IjsK
LQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Ci0JCX07CisJcGNpZV9waHk6IHBjaWUtcGh5IHsKKwkJ
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktcGNpZS1waHkiOworCQljbG9ja3MgPSA8JmNy
dSBTQ0xLX1BDSUVQSFlfUkVGPjsKKwkJY2xvY2stbmFtZXMgPSAicmVmY2xrIjsKKwkJI3BoeS1j
ZWxscyA9IDwxPjsKKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9QQ0lFUEhZPjsKKwkJZHJpdmUtaW1w
ZWRhbmNlLW9obSA9IDw1MD47CisJCXJlc2V0LW5hbWVzID0gInBoeSI7CisJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7CiAJfTsKIAogCXUycGh5MDogdXNiMi1waHlAZTQ1MCB7Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
