Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20E2B5C3
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3XoM3gn0FwoRyAWl5W30kQHcVyqcP1JEzWh0jbJBmU=; b=NGXmepXIDeTZ8y
	wyQPlQo9B6NeWZ43AnK1aulMcdqNNeB4oo1zThr9ijzgknUMPbaHSPB+X81+uLwd/4b8aN5U6EOBQ
	pU/cIabvYantHIU20k4Bo8y/4Y/q05+aKu58+OAJao3Bs7nMbNJBvYkDEIxu5NBXEDMCQyyl8BxW6
	38kim5vlACQAdc8iEKWZuzxIBvP8F8Uyh+7aMGUr3Pgc4tv0g6+SXpBZ9Vq+S4TeFxVfLyYZOGqK8
	elYtchK4Yryc2VuJjCwU1KBzNIPM9Ee4OPKh8sXvbgTFXGj+sE/eP5PfJ6/fGjOiCbXzlfZo1Axjl
	KV3FEx3BQ3OQRKqdJKiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfp6-0002QF-Nd; Sun, 28 Apr 2019 09:10:12 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfp3-00020r-GZ
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:10:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id w25so3830465pfi.9
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=atSux2CLVgvkAm/ZF1YbZ3Gw1E2OtZol0Foof5k36KQ=;
 b=Y54ynMdNqP620+jYdLekHXHNfPJTLp4IMsAQmksyATfYIkhztUg4YZZjGy/SRHxAVM
 3OouvORqKBjJlwglBZwR2wySb65wZUx4LrHmqMN4eyCzu0nj/GlpP213oSQ7TIm7hMG1
 gsM+KCRZbHzyncvnSImypGx6pHjqtk6Vh3e00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=atSux2CLVgvkAm/ZF1YbZ3Gw1E2OtZol0Foof5k36KQ=;
 b=fZFFhh1mX9l1B3mLXpG5j1KqfC4Js5lMJv2Yi/MRP8S1BYpsFaEt7RluvL8O3nF5/H
 jwUO87tiHy7Ytv7BcJ1UsnSnDXitYzaeQagZmtG3v+2gWWXN99+6Ax9N3ZLvtmNG0RT3
 OZmKRxiO8B68nae1HSrqINMOzQeqpPKGoIvulazVj5I5xD6tvsgiEy4yB0R82+sflRJt
 hxFYttWnGDf+JjpmKwAFc1PHmANmVbp7W+REFXrI4T82gZG6nRzN4rgFEAnvZa5JaevO
 RZjLbbf7tV85bIzKQnKC7dAKPJ9OOEyfYhxRV6ZlhMwhJLF9KxKEmFFZ/ZfLeQ13Fs/T
 cCHQ==
X-Gm-Message-State: APjAAAXhOXGWYpRgRhUkDaIr4jhO7NSx9uZ5viVhKWT2EHJkZms9xbrq
 O2MvyKTFKnWHW0boX9AideaqtA==
X-Google-Smtp-Source: APXvYqzvsbx9AKxeZgs7QPbPPKorGhTgZnfezUtdeCOouaOjpRAzkHkKhKNy1Ev0Icom9c8JzyFhhw==
X-Received: by 2002:a63:2b41:: with SMTP id r62mr53139332pgr.403.1556442608545; 
 Sun, 28 Apr 2019 02:10:08 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.10.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:10:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 9/9] rockchip: rk3399: Create single image using BINMAN
Date: Sun, 28 Apr 2019 14:39:13 +0530
Message-Id: <20190428090913.10568-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_021009_564763_ECFB4D46 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

UkszMzk5IHBsYXRmb3JtIGhhcyB0d28gc3RhZ2UgYm9vdCBsb2FkZXJzIGxpa2UgU1BMIGFuZApV
LUJvb3QgcHJvcGVyLiBGb3IgZWFjaCBzdGFnZSB3ZSBuZWVkIHRvIGJ1cm4gdGhlIGltYWdlCm9u
IHRvIGZsYXNoIHdpdGggcmVzcGVjdGl2ZSBvZmZzZXRzLgoKVGhpcyBwYXRjaCBjcmVhdGUgYSBz
aW5nbGUgaW1hZ2UgdXNpbmcgYmlubWFuLCBzbyB0aGF0CnVzZXIgY2FuIGdldCByaWQgb2YgYnVy
bmluZyBkaWZmZXJlbnQgc3RhZ2UgYm9vdCBpbWFnZXMuCgp3aXRob3V0IHRoaXMgcGF0Y2g6Ci0t
LS0tLS0tLS0tLS0tLS0tLQrigrkgc3VkbyBkZCBpZj1zcGwvdS1ib290LXNwbC1yb2NrY2hpcC5i
aW4gb2Y9L2Rldi9zZGMgc2Vlaz02NArigrkgc3VkbyBkZCBpZj11LWJvb3QuaXRiIG9mPS9kZXYv
c2RjIHNlZWs9MTYzODQKCndpdGggdGhpcyBwYXRjaDoKLS0tLS0tLS0tLS0tLS0tCuKCuSBzdWRv
IGRkIGlmPXUtYm9vdC1yb2NrY2hpcC13aXRoLXNwbC5iaW4gb2Y9L2Rldi9zZGMgc2Vlaz02NAoK
VGhpcyB3b3VsZCBlYXNpbHkgZXh0ZW5kIGlmIG90aGVyIHJvY2tjaGlwIGZhbWlseSBTb0MncyB3
b3VsZAptYWtlIHVzZSBvZiBzaW5nbGUgaW1hZ2UgY3JlYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBNYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMyArKysrKysrKysrKysrCiBhcmNoL2FybS9k
dHMvcmszMzk5LWZpY3VzLXUtYm9vdC5kdHNpICAgfCAgMSArCiBhcmNoL2FybS9kdHMvcmszMzk5
LXJvY2s5NjAtdS1ib290LmR0c2kgfCAgMSArCiBhcmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5k
dHNpICAgICAgICAgfCAxNyArKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vbWFjaC1yb2NrY2hp
cC9LY29uZmlnICAgICAgICAgIHwgIDEgKwogZG9jL1JFQURNRS5yb2NrY2hpcCAgICAgICAgICAg
ICAgICAgICAgIHwgIDggKystLS0tLS0KIGluY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgg
ICAgICAgICB8ICAyICsrCiA3IGZpbGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQppbmRleCAyNDcxMzQw
YzcxLi4wZmU3YWMzY2MwIDEwMDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAt
ODUxLDYgKzg1MSwxMSBAQCBpZmVxICgkKENPTkZJR19BUkNIX1NVTlhJKSQoQ09ORklHX1NQTCks
eXkpCiBBTEwteSArPSB1LWJvb3Qtc3VueGktd2l0aC1zcGwuYmluCiBlbmRpZgogCisjIEJ1aWxk
IGEgY29tYmluZWQgc3BsICsgdS1ib290IGltYWdlIGZvciByb2NrY2hpcAoraWZkZWYgQ09ORklH
X1JPQ0tDSElQX1JLMzM5OQorQUxMLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHUtYm9vdC1y
b2NrY2hpcC13aXRoLXNwbC5iaW4KK2VuZGlmCisKICMgZW5hYmxlIGNvbWJpbmVkIFNQTC91LWJv
b3QvZHRiIHJ1bGVzIGZvciB0ZWdyYQogaWZlcSAoJChDT05GSUdfVEVHUkEpJChDT05GSUdfU1BM
KSx5eSkKIEFMTC15ICs9IHUtYm9vdC10ZWdyYS5iaW4gdS1ib290LW5vZHRiLXRlZ3JhLmJpbgpA
QCAtMTM2Niw2ICsxMzcxLDExIEBAIHUtYm9vdC1zdW54aS13aXRoLXNwbC5iaW46IHNwbC9zdW54
aS1zcGwuYmluIHUtYm9vdC5pdGIgRk9SQ0UKIGVuZGlmCiBlbmRpZgogCitpZmVxICgkKENPTkZJ
R19ST0NLQ0hJUF9SSzMzOTkpLHkpCit1LWJvb3Qtcm9ja2NoaXAtd2l0aC1zcGwuYmluOiBzcGwv
dS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290Lml0YiBGT1JDRQorCUAkKGNhbGwgaWZfY2hh
bmdlZCxiaW5tYW4pCitlbmRpZiAjIENPTkZJR19ST0NLQ0hJUF9SSzMzOTkKKwogaWZuZXEgKCQo
Q09ORklHX1RFR1JBKSwpCiBpZm5lcSAoJChDT05GSUdfQklOTUFOKSwpCiAjIE1ha2VzIHUtYm9v
dC1kdGItdGVncmEuYmluIHUtYm9vdC10ZWdyYS5iaW4gdS1ib290LW5vZHRiLXRlZ3JhLmJpbgpA
QCAtMTY2NCw2ICsxNjc0LDkgQEAgc3BsL3UtYm9vdC1zcGw6IHRvb2xzIHByZXBhcmUgXAogc3Bs
L3N1bnhpLXNwbC5iaW46IHNwbC91LWJvb3Qtc3BsCiAJQDoKIAorc3BsL3UtYm9vdC1zcGwtcm9j
a2NoaXAuYmluOiBzcGwvdS1ib290LXNwbAorCUA6CisKIHNwbC9zdW54aS1zcGwtd2l0aC1lY2Mu
YmluOiBzcGwvc3VueGktc3BsLmJpbgogCUA6CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9y
azMzOTktZmljdXMtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LWZpY3VzLXUtYm9v
dC5kdHNpCmluZGV4IGVhYjg2YmRiMzAuLjY3YjYzYTgzNTIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L2R0cy9yazMzOTktZmljdXMtdS1ib290LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1m
aWN1cy11LWJvb3QuZHRzaQpAQCAtMyw0ICszLDUgQEAKICAqIENvcHlyaWdodCAoQykgMjAxOSBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KICAqLwogCisjaW5jbHVkZSAi
cmszMzk5LXUtYm9vdC5kdHNpIgogI2luY2x1ZGUgInJrMzM5OS1zZHJhbS1kZHIzLTE2MDAuZHRz
aSIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jazk2MC11LWJvb3QuZHRzaSBi
L2FyY2gvYXJtL2R0cy9yazMzOTktcm9jazk2MC11LWJvb3QuZHRzaQppbmRleCA1MjU2ZjZkM2Yy
Li43ZmI1MDcyYTliIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LXJvY2s5NjAtdS1i
b290LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2NrOTYwLXUtYm9vdC5kdHNpCkBA
IC0zLDQgKzMsNSBAQAogICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2FuIFRla2kgPGphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tPgogICovCiAKKyNpbmNsdWRlICJyazMzOTktdS1ib290LmR0c2ki
CiAjaW5jbHVkZSAicmszMzk5LXNkcmFtLWxwZGRyMy0yR0ItMTYwMC5kdHNpIgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTkt
dS1ib290LmR0c2kKaW5kZXggMDc4NmMxMTkzYS4uYWJkMGIwOTFhYiAxMDA2NDQKLS0tIGEvYXJj
aC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXUt
Ym9vdC5kdHNpCkBAIC0zLDYgKzMsMjMgQEAKICAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KICAqLwogCisjaW5jbHVkZSA8Y29uZmln
Lmg+CisKKy8geworCWJpbm1hbiB7CisJCWZpbGVuYW1lID0gInUtYm9vdC1yb2NrY2hpcC13aXRo
LXNwbC5iaW4iOworCQlwYWQtYnl0ZSA9IDwweGZmPjsKKworCQlibG9iIHsKKwkJCWZpbGVuYW1l
ID0gInNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiI7CisJCX07CisKKwkJdS1ib290LWltZyB7
CisJCQlvZmZzZXQgPSA8Q09ORklHX1NQTF9QQURfVE8+OworCQl9OworCX07Cit9OworCiAmc2Rt
bWMgewogCXUtYm9vdCxkbS1wcmUtcmVsb2M7CiB9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFj
aC1yb2NrY2hpcC9LY29uZmlnIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9LY29uZmlnCmluZGV4
IDI4NmM4NzAxMzUuLjdhYzBlZTNjMmQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvS2NvbmZpZworKysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKQEAgLTEzMCw2
ICsxMzAsNyBAQCBlbmRpZgogY29uZmlnIFJPQ0tDSElQX1JLMzM5OQogCWJvb2wgIlN1cHBvcnQg
Um9ja2NoaXAgUkszMzk5IgogCXNlbGVjdCBBUk02NAorCXNlbGVjdCBCSU5NQU4KIAlzZWxlY3Qg
U1VQUE9SVF9TUEwKIAlzZWxlY3QgU1BMCiAJc2VsZWN0IFNQTF9BVEYKZGlmZiAtLWdpdCBhL2Rv
Yy9SRUFETUUucm9ja2NoaXAgYi9kb2MvUkVBRE1FLnJvY2tjaGlwCmluZGV4IGNjYmFhYWE5YTcu
LjRjZWIzODNiYjcgMTAwNjQ0Ci0tLSBhL2RvYy9SRUFETUUucm9ja2NoaXAKKysrIGIvZG9jL1JF
QURNRS5yb2NrY2hpcApAQCAtNDIyLDEzICs0MjIsOSBAQCBPcHRpb24gMjogUGFja2FnZSB0aGUg
aW1hZ2Ugd2l0aCBTUEw6CiAKICAgICA9PiBjZCAvcGF0aC90by91LWJvb3QKIAotICAtIFdyaXRl
IHByZWZpeGVkIFNQTCBhdCA2NHRoIHNlY3RvcgorICAtIFdyaXRlIHNpbmdsZSBzcGwgKyB1LWJv
b3QgYXQgNjR0aCBzZWN0b3IKIAotICAgID0+IHN1ZG8gZGQgaWY9c3BsL3UtYm9vdC1zcGwtcm9j
a2NoaXAuYmluIG9mPS9kZXYvc2RjIHNlZWs9NjQKLQotICAtIFdyaXRlIFUtQm9vdCBwcm9wZXIg
YXQgMTYzODQgc2VjdG9yCi0KLSAgICA9PiBzdWRvIGRkIGlmPXUtYm9vdC5pdGIgb2Y9L2Rldi9z
ZGMgc2Vlaz0xNjM4NAorICAgID0+IHN1ZG8gZGQgaWY9dS1ib290LXJvY2tjaGlwLXdpdGgtc3Bs
LmJpbiBvZj0vZGV2L3NkYyBzZWVrPTY0CiAgICAgPT4gc3luYwogCiBQdXQgdGhpcyBTRCAob3Ig
bWljcm8tU0QpIGNhcmQgaW50byB5b3VyIGJvYXJkIGFuZCByZXNldCBpdC4gWW91IHNob3VsZCBz
ZWUKZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggYi9pbmNsdWRl
L2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCmluZGV4IGI0MTIwMTI1ODIuLmE2NThmMDNhZGUgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKKysrIGIvaW5jbHVkZS9j
b25maWdzL3JrMzM5OV9jb21tb24uaApAQCAtMzgsNiArMzgsOCBAQAogI2RlZmluZSBDT05GSUdf
U1lTX1NEUkFNX0JBU0UJCTAKICNkZWZpbmUgU0RSQU1fTUFYX1NJWkUJCQkweGY4MDAwMDAwCiAK
KyNkZWZpbmUgQ09ORklHX1NQTF9QQURfVE8JCTgzNTU4NDAKKwogI2lmbmRlZiBDT05GSUdfU1BM
X0JVSUxECiAKICNkZWZpbmUgRU5WX01FTV9MQVlPVVRfU0VUVElOR1MgXAotLSAKMi4xOC4wLjMy
MS5nZmZjNmZhMGUzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
