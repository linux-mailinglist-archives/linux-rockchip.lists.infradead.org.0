Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B22C76489
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 13:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zvA8Hoy5aPBgvak1nqBMJNUk6KoYN9zO5spo2XLViuY=; b=Hjcirn6XRuj5RA
	McEgrAAb/EkG509S02JQDatJIFO1LF1t9WwSSzpEy8Vf1Vad6mKN9yFR1Bh+Yb7AexqHbLsBt+iVa
	p/C8Z0ZHHsxR/BS3QhihiU8YjcLKq0Gj9vBSheD8ZT6+Q5HUYaMAmPi2s8EGCm0hC+nw6xIUTOxmf
	nRirYR1C5y4WAq7gJknJOV7mtPC5JRthD4VyWjkC1Gnth0wFZ+D8I+mOUjHD6FsIue5hTO87PUcmM
	I5p6nnuvify8pCjuyXMQn3z1gSJv8Dqa0SNB/hdlf1xape/bnvTIj/2MfhxaYAnTg5szNhMwO6aeA
	9ojKfgWN1drBczQd0RsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyR5-0005Wi-O3; Fri, 26 Jul 2019 11:30:55 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOY-0002LM-84
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 11:28:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id b17so36866253lff.7
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2019 04:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yms7A0Dj/ss/bfob7fvSwoSoaN3YOnXapMDkDt2JkGk=;
 b=dI3W3+aYZkRhr2cVhzUptcUM2pwVVATteZ4VZ3NtR71AqBqGIYfrf8yrxzStuM+3nE
 tya5Wiu6pzLKkBX88Pc9jxDP11Kp2Nb7gJvFfjHY3wHbyJTa9MjgkhXMMSLglyktzkm3
 rtfP0GDsu4nDfg7oDxj6j5NfrKRKG9nFa1yKVgkG+vm4TleEGCA4h4MB8cJEZeWnFrVx
 66ajVkJqxzTBxoq8QcMEGK7KzPudl9gdTSkKZ9JTKZKCDGv4Ao7DdYIPa5uPBiKKxwIV
 QUSwtaEwhzZ9sq1FGfEOxB2hVT7HFBdpqVMA8nbZVRahng8T1uE6i7OUfifFilHWGBbe
 be7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yms7A0Dj/ss/bfob7fvSwoSoaN3YOnXapMDkDt2JkGk=;
 b=qADQ6JO+0T4lXzsK5Zh1fV1TXYTm7T9UJgg+BwgWao8iPK+qh+31bdXm7BwsdO+jwI
 cdro/0Lby5qnPxXdM0N9F2HLYPyU+rC4t/xr7EuMdeaH//hhuPZXLT7l6zxe88hLRAs+
 ldaH22uj+WQzi+bydLTWQ9B+Grjp4z+lfaEkZ743W/KCf8cW3PZUfHV9tPocULnrXkFQ
 eiEeTgSxqlaFpo9VzJktpty4sW91XtbhdFOou+/eWh+h1P6XZogAdwQbEI6EwQC2A6cH
 TMKGFQWvjbEX2EV9csOal9chHgRrk576y8aaiDggSX7fW5nQuLSNeKpiXH66/vJs33nS
 rTYA==
X-Gm-Message-State: APjAAAXjGSm7U8y4QC/re4RL9SA0pwjdvpzjmrFEWg0WkKl4aXglLieo
 Dh0nZbwGW1A/BODLsjTSFpSoOw==
X-Google-Smtp-Source: APXvYqx05CPqPaf24TqfXHUET5OwIsXvhc0hYDuun6wEBRgaKaaGpBp1xs/Z6Ozl1ehbTYYA+0UBew==
X-Received: by 2002:a19:be03:: with SMTP id o3mr43992429lff.88.1564140496719; 
 Fri, 26 Jul 2019 04:28:16 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id b27sm10020400ljb.11.2019.07.26.04.28.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:16 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:12 +0200
Message-Id: <20190726112812.19665-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042818_611373_1E581BA6 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, linux-gpio@vger.kernel.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgouLi9kcml2ZXJzL3BpbmN0
cmwvcGluY3RybC1yb2NrY2hpcC5jOiBJbiBmdW5jdGlvbiDigJhyb2NrY2hpcF9ncGlvX3NldF9j
b25maWfigJk6Ci4uL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmM6Mjc4MzozOiB3
YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCiAgIHJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKGdjLCBvZmZzZXQsIHRydWUp
OwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouLi9kcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jOjI3OTU6Mjogbm90ZTogaGVyZQogIGRlZmF1
bHQ6CiAgXn5+fn5+fgoKUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBh
Ym91dCBmYWxsLXRocm91Z2guIEFkZAoncmV0dXJuIC1FTk9UU1VQUDsnIHRvIG1hdGNoIHRoZSBj
b21tZW50LgoKRml4ZXM6IGQ5MzUxMmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUg
ZmFsbC10aHJvdWdoIHdhcm5pbmciKQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRl
cnMucm94ZWxsQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2No
aXAuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXJvY2tjaGlwLmMKaW5kZXggNjJhNjIyMTU5MDA2Li5kYzBiYmYxOThjYmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9waW5j
dHJsL3BpbmN0cmwtcm9ja2NoaXAuYwpAQCAtMjc5Miw2ICsyNzkyLDcgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9ncGlvX3NldF9jb25maWcoc3RydWN0IGdwaW9fY2hpcCAqZ2MsIHVuc2lnbmVkIGlu
dCBvZmZzZXQsCiAJCSAqIHN0aWxsIHJldHVybiAtRU5PVFNVUFAgYXMgYmVmb3JlLCB0byBtYWtl
IHN1cmUgdGhlIGNhbGxlcgogCQkgKiBvZiBncGlvZF9zZXRfZGVib3VuY2Ugd29uJ3QgY2hhbmdl
IGl0cyBiZWhhdmlvdXIuCiAJCSAqLworCQlyZXR1cm4gLUVOT1RTVVBQOwogCWRlZmF1bHQ6CiAJ
CXJldHVybiAtRU5PVFNVUFA7CiAJfQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
