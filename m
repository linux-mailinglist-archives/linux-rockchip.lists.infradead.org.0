Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D5DB6DA
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krFUBVHTRcWTYykVR7NfZ8a1VRvsGY7S2hCzLbPaYKU=; b=TYYEpSeyNcYTBR
	+lPX7P63ZRBUwOJj+yLZz2QamfIcFtMLYeS16MgucYp8Obj9gDRXnnA3lzE/tpvKeMzRwtH7gcv/F
	GM2SrzfX4h+j3LcZg6THQSu5OrR0BGgwyAQsMMiIoiJ8aqVxja4i539hqIyNoASWVZMaZS79ltUw2
	vJkDQMO5h8RsiZmT4Cwvfs17zcw08f7wORRrTiV2w4U8BMHHGNMU5hdBJXlh/kii/jzW/zpMXNwvP
	lZ+yLLuUagtkCqvLWrj0nr3wRMz6ZXbeFgwWfCnfimNLKkZhqCQnxB0/DQLPwr01THW+ReJdsWuBx
	Xeomzrlv6KlAYM5ZTrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB81-0001GI-5V; Thu, 17 Oct 2019 19:08:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB7y-0001EV-9Z
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:08:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id i32so1876733pgl.10
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5mlVgZ2xsyFCkSJmW+KRkFZqD8wWmh4kqGu0mgsTBRg=;
 b=Kik4shD7A9hKSbapxndgvibTbvXSoQXN4LFtASJvUYqoK4SYtqobODB3T6a7D+JjWN
 hSDi1goG40SD6HuJSSgGbPq903pB0uPje3s8DPKN+k3T4Ms0zBKy+sJYqic4wyJ5T8Fj
 AMr4QlPD7UkQM1eMSaGaJrba8XaOAlHS3okPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5mlVgZ2xsyFCkSJmW+KRkFZqD8wWmh4kqGu0mgsTBRg=;
 b=CnFM8E5TIcFF8ZpWjA5H/atFh8ZzaPhuqRSKS1z3LKsDOf5+Squw2brhXIaaaAy7aw
 i28FRQfj/Y9+0YghbNFAdl760HZsDuAuytpBOslueuu8PIHCpkkZ30NjLHoFr+6yNeN+
 45FUZEOPP9X8vg+0CzQzYIb58dfUfCiYYOfdn1eV/RHP5Y71x0AqXhzL8yuF7o+TxyNQ
 fWRk4LqAJTL2Fib3XhBTHSXxhLgpcqkjnFGB/yOXeJXQKbuvV9T8Gz7+oulg20wasXzV
 d5UzQFjzwq95Xpo0x/A6UQbLZxcAGtU76hvVgfy86kdzeIwDQ9PjVdi5DuvtcLgL0k8b
 Lk4g==
X-Gm-Message-State: APjAAAWVV2oISEJYVa5qltc0NW5DwkFinCkZ5Y15EdIDyxAEEyeLhq+L
 0ywry3ClB9k0W7EgMZqMcoozdg==
X-Google-Smtp-Source: APXvYqwQJaRDrkHW8fkf85nnyJbrjb7N5X13gHFwVla9UKT5i6l9UynqB+RnAR4h9U3bbOPNGEH77A==
X-Received: by 2002:aa7:9832:: with SMTP id q18mr1911213pfl.102.1571339281717; 
 Thu, 17 Oct 2019 12:08:01 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:08:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 4/5] rockchip: Add Binman support
Date: Fri, 18 Oct 2019 00:37:09 +0530
Message-Id: <20191017190710.29985-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191017190710.29985-1-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120802_381694_DD1844E3 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VFBMLWJhc2VkIHJvY2tjaGlwIHBsYXRmb3JtIGxpa2UgcmszMjg4LCByazMzMjgsIHJrMzM2OAph
bmQgcmszMzk5IGhhcyB0aHJlZSBzdGFnZSBib290IGxvYWRlcnMgbGlrZSBUUEwsIFNQTCBhbmQK
VS1Cb290IHByb3Blci4gRm9yIGVhY2ggc3RhZ2Ugd2UgbmVlZCB0byBidXJuIHRoZSBpbWFnZQpv
biB0byBmbGFzaCB3aXRoIHJlc3BlY3RpdmUgb2Zmc2V0cy4KClRoaXMgcGF0Y2ggY3JlYXRlIGEg
c2luZ2xlIGltYWdlIHVzaW5nIGJpbm1hbiwgc28gdGhhdAp1c2VyIGNhbiBnZXQgcmlkIG9mIGJ1
cm5pbmcgZGlmZmVyZW50IHN0YWdlIGJvb3QgaW1hZ2VzLgoKVGhlIG5ldyBpbWFnZSBjYWxsZWQg
J3UtYm9vdC1yb2NrY2hpcC13aXRoLXRwbC1zcGwuYmluJwp3aGljaCBjYW4gYnVybiBpbnRvIGZs
YXNoIGxpa2U6Cgrigrkgc3VkbyBkZCBpZj11LWJvb3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJp
biBvZj0vZGV2L3NkYSBzZWVrPTY0CgpUaGlzIHdvdWxkIGVhc2lseSBleHRlbmQgaWYgb3RoZXIg
cm9ja2NoaXAgZmFtaWx5IFNvQydzIHdvdWxkCm1ha2UgdXNlIG9mIHNpbmdsZSBpbWFnZSBjcmVh
dGlvbi4KCkNjOiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgpDYzogTWF0
d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBNYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAxMCArKysrKysrKysrCiBhcmNoL2FybS9LY29uZmln
ICAgICAgICAgICAgICAgICAgfCAgMSArCiBhcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNp
ICAgfCAgMiArKwogYXJjaC9hcm0vZHRzL3JrMzMyOC11LWJvb3QuZHRzaSAgIHwgIDIgKysKIGFy
Y2gvYXJtL2R0cy9yazMzNjgtdS1ib290LmR0c2kgICB8ICAyICsrCiBhcmNoL2FybS9kdHMvcmsz
Mzk5LXUtYm9vdC5kdHNpICAgfCAgMiArKwogYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5k
dHNpIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAt
Y29tbW9uLmggfCAgMiArKwogOCBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpkaWZmIC0t
Z2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQppbmRleCA5MThiNWQ1M2UwLi4wNDk3ODFlMGJhIDEw
MDY0NAotLS0gYS9NYWtlZmlsZQorKysgYi9NYWtlZmlsZQpAQCAtODg4LDYgKzg4OCw3IEBAIGVu
ZGlmCiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApJChDT05GSUdfU1BMKSQoQ09ORklH
X1RQTCkseXl5KQogQUxMLXkgKz0gc3BsL3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluCitBTEwteSAr
PSB1LWJvb3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJpbgogZW5kaWYKIAogTERGTEFHU191LWJv
b3QgKz0gJChMREZMQUdTX0ZJTkFMKQpAQCAtMTM0Niw2ICsxMzQ3LDE1IEBAIHRwbC91LWJvb3Qt
dHBsLmltZzogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCiAJJChjYWxsIGlmX2NoYW5nZWQsbWtp
bWFnZSkKIHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogdHBsL3UtYm9vdC10cGwuaW1nIHNw
bC91LWJvb3Qtc3BsLmJpbiBGT1JDRQogCSQoY2FsbCBpZl9jaGFuZ2VkLGNhdCkKKworaWZkZWYg
Q09ORklHX1NQTF9MT0FEX0ZJVAorUk9DS0NISVBfVUJPT1RfSU1HIDo9IHUtYm9vdC5pdGIKK2Vs
c2UKK1JPQ0tDSElQX1VCT09UX0lNRyA6PSB1LWJvb3QuaW1nCitlbmRpZgorCit1LWJvb3Qtcm9j
a2NoaXAtd2l0aC10cGwtc3BsLmJpbjogc3BsL3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluICQoUk9D
S0NISVBfVUJPT1RfSU1HKSBGT1JDRQorCSQoY2FsbCBpZl9jaGFuZ2VkLGJpbm1hbikKIGVuZGlm
CiAKIGlmZXEgKCQoQ09ORklHX0FSQ0hfTFBDMzJYWCkkKENPTkZJR19TUEwpLHl5KQpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKaW5kZXggMWRmMmFiYTNj
Mi4uODdmYTFmNDNmNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vS2NvbmZpZworKysgYi9hcmNoL2Fy
bS9LY29uZmlnCkBAIC0xNTk0LDYgKzE1OTQsNyBAQCBjb25maWcgQVJDSF9TVE0zMk1QCiBjb25m
aWcgQVJDSF9ST0NLQ0hJUAogCWJvb2wgIlN1cHBvcnQgUm9ja2NoaXAgU29DcyIKIAlzZWxlY3Qg
QkxLCisJc2VsZWN0IEJJTk1BTiBpZiBUUEwgJiYgU1BMCiAJc2VsZWN0IERNCiAJc2VsZWN0IERN
X0dQSU8KIAlzZWxlY3QgRE1fSTJDCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMjg4LXUt
Ym9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQppbmRleCAzZjAwYTNi
NmQzLi42ZDMxNzM1MzYyIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5k
dHNpCisrKyBiL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKQEAgLTMsNiArMyw4IEBA
CiAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQKICAq
LwogCisjaW5jbHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCisKIC8gewogCWNob3NlbiB7CiAJ
CXUtYm9vdCxzcGwtYm9vdC1vcmRlciA9IFwKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMz
MjgtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzI4LXUtYm9vdC5kdHNpCmluZGV4IGZm
YmQ2NTdlMzEuLjBjNTFhOGRiZmIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9yazMzMjgtdS1i
b290LmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL3JrMzMyOC11LWJvb3QuZHRzaQpAQCAtMyw2ICsz
LDggQEAKICAqIChDKSBDb3B5cmlnaHQgMjAxOSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0
ZAogICovCiAKKyNpbmNsdWRlICJyb2NrY2hpcC11LWJvb3QuZHRzaSIKKwogLyB7CiAJYWxpYXNl
cyB7CiAJCW1tYzAgPSAmZW1tYzsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMzNjgtdS1i
b290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzY4LXUtYm9vdC5kdHNpCmluZGV4IDFlN2QwNzkz
MTUuLjQxYWMwNTRiODEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9yazMzNjgtdS1ib290LmR0
c2kKKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM2OC11LWJvb3QuZHRzaQpAQCAtMiwzICsyLDUgQEAK
IC8qCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+CiAgKi8KKworI2luY2x1ZGUgInJvY2tjaGlwLXUtYm9vdC5kdHNpIgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMz
OTktdS1ib290LmR0c2kKaW5kZXggMjczOGEzODg5ZS4uZmU4YTczZDY1MyAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmszMzk5
LXUtYm9vdC5kdHNpCkBAIC0zLDYgKzMsOCBAQAogICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgogICovCiAKKyNpbmNsdWRlICJyb2Nr
Y2hpcC11LWJvb3QuZHRzaSIKKwogJnBtdSB7CiAJdS1ib290LGRtLXByZS1yZWxvYzsKIH07CmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kgYi9hcmNoL2FybS9k
dHMvcm9ja2NoaXAtdS1ib290LmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMC4uYzQ5NjEwNzExOQotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL2R0cy9yb2NrY2hp
cC11LWJvb3QuZHRzaQpAQCAtMCwwICsxLDIxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMCsKKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20+CisgKi8KKworI2luY2x1ZGUgPGNvbmZpZy5oPgorCisvIHsK
KwliaW5tYW4geworCQlmaWxlbmFtZSA9ICJ1LWJvb3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJp
biI7CisJCXBhZC1ieXRlID0gPDB4ZmY+OworCisJCWJsb2IgeworCQkJZmlsZW5hbWUgPSAic3Bs
L3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluIjsKKwkJfTsKKworCQl1LWJvb3QtaW1nIHsKKwkJCW9m
ZnNldCA9IDxDT05GSUdfU1BMX1BBRF9UTz47CisJCX07CisJfTsKK307CmRpZmYgLS1naXQgYS9p
bmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggYi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2No
aXAtY29tbW9uLmgKaW5kZXggNjhlMTEwNWE0Yi4uZDdmNWNhOWZhNCAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCisrKyBiL2luY2x1ZGUvY29uZmlncy9yb2Nr
Y2hpcC1jb21tb24uaApAQCAtOSw2ICs5LDggQEAKIAogI2RlZmluZSBDT05GSUdfU1lTX05TMTY1
NTBfTUVNMzIKIAorI2RlZmluZSBDT05GSUdfU1BMX1BBRF9UTwkJODM1NTg0MAorCiAjaWZuZGVm
IENPTkZJR19TUExfQlVJTEQKIAogLyogRmlyc3QgdHJ5IHRvIGJvb3QgZnJvbSBTRCAoaW5kZXgg
MCksIHRoZW4gZU1NQyAoaW5kZXggMSkgKi8KLS0gCjIuMTguMC4zMjEuZ2ZmYzZmYTBlMwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
