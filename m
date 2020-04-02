Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56D19C46B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtO0H791u6MSMM/vO3P5VYJu0aKPYromnFpdI3qeo1Y=; b=tQYJ/sX8YDHiH4
	SHaaWLIDMf+e2uAi2Ni2MRmeIF9qteJwZrpcYZp6/ybzE7nrmt+MmCnMdNi9JeWqNoRia8FhQYvRT
	BDDDauCCiZycbudOGpw6NGeKEwh69K+NE3xKC6WG0uBk5iYvtqhEDqC17fuG5uN9LoR6DZvu2WXbw
	rPZPk41Az7eLy/hWEJ2igNC9XcXuAwA48XDgD6xDIHl4cGFTTOIJObUd3Od4YQUYPyZOb8xTYPIRM
	N5UZDAEjgcuQja1RWMvbdzJ74INWeojZXjfPinTZflAlUjDFLqTO3twBY/YZ+hwkPgxin9FqcGCB7
	NebKSga/hFIaCSXBiv0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0yl-0003x7-4L; Thu, 02 Apr 2020 14:37:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0yi-0003wm-Ko
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:37:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id c7so4492102wrx.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 07:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=38AkG1J/VasVYvyO8FLPKGFVB9/daSIsdACwJ1jmT6w=;
 b=mV6zDSYqDp5UdxncOWm+lXHPzCxZTPcsxD7Y4qZG6GxtIOI7n2Tt1tjtqODXe1XonP
 OAXcNYyYlMJac/TvM+KVXpF303u1R9YTzAxas6XSeg4X8oEOkNwAVSdGtUffdrDiJtFp
 flyV4X09h+4tTRXQOf0Myw+NBmc3NsNXpSdZAbDjVkQ9BKab39lNcHZswSQYu1Fpp7qj
 CwD3rw5ZWHrB8RwDUhhLS+QuwfTVRKShQNQbrrhdOk14h5wFDHxeHqplJt0dE3v/jO2k
 LMujXX5d5kt24SkX9dQ7Su173WskYyvHna90o4QbwOv3b0cwBqchVgNL2pDMZPI5zpHr
 cHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=38AkG1J/VasVYvyO8FLPKGFVB9/daSIsdACwJ1jmT6w=;
 b=SdWoRSp6H2JuToO9boDyT6Wm5u4B2oriyV7CPvT9uK7uCccV+V4UF5wx9mADElzpfV
 PH8l3AODLCMgDvuc1Xj1IgWBtSLJMbMeGooTA1XI8Nrd8SLFNA49HHYboDVH3yQKgnkp
 wdeF9BcBGD3p62AWI5dmn96MM7BqjfJVbk9xtbrcwkK12seL9OAGtJdWRrLqXegTEuH1
 aTmKcFFNaG0J/NjyC1i6U+Wv9Z7fKnrureh7csdViYhFbBhvqUOTHIasRaIY80OmZzuu
 7NJg5nWpt4tj64l2u13VdXg9ndnmqkiHcC5V3MikVDtOImNMkjfbl5/mN5+m+RY02t0l
 RVDA==
X-Gm-Message-State: AGi0PuZ38yq2lsTVLquU6S70BFa02wZ9c7OQdS/yy1I0G9IZVNLGl6e0
 hwpXxW/GGJW6uOOVY2TV9RQ=
X-Google-Smtp-Source: APiQypKP/NzZE8Bp6zRGZQB5jMxxV5ROKksg/0lNUpk/3V8+Un9IDmxt1EQ5jKflYscGyO2USHOJHQ==
X-Received: by 2002:adf:97d0:: with SMTP id t16mr3865783wrb.343.1585838275269; 
 Thu, 02 Apr 2020 07:37:55 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id e5sm7848520wru.92.2020.04.02.07.37.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 07:37:54 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <76211530-73ff-5f36-8915-8bdc036d4369@gmail.com>
Date: Thu, 2 Apr 2020 16:37:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_073756_681831_30270DD8 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gNC8yLzIwIDQ6MzEgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5lcnN0YWcs
IDIuIEFwcmlsIDIwMjAsIDE1OjQ4OjAyIENFU1Qgc2NocmllYiBKb2hhbiBKb25rZXI6Cj4+IEhp
IEhlbGVuLAo+Pgo+Pj4gRnJvbTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5j
b20+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4+IGlu
ZGV4IDMzY2MyMWZjZjRjMTAuLmZjMDI5NWQyYTY1YTEgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiBAQCAtMTM5NCw2ICsxMzk0LDE3IEBAIGlv
X2RvbWFpbnM6IGlvLWRvbWFpbnMgewo+Pj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiAg
CQl9Owo+Pj4gIAo+Pgo+Pj4gKwkJbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7Cj4+Cj4+
IEZvciBIZWlrbyBzb3J0IHN5c2NvbkBmZjc3MDAwMCBzdWJub2RlcyBhbHBoYWJldGljYWwgb3Ig
cmVnIHZhbHVlIGZpcnN0Pwo+IAo+IFNpbWlsYXIgdG8gbWFpbiBub2RlcyAuLi4gc28gdGhpbmdz
IHdpdGhvdXQgcmVnIGFscGhhYmV0aWNhbCwKPiB0aGUgcmVzdCBieSByZWcgYWRkcmVzcwo+IAph
bHBoYWJldGljYWwgZmlyc3Q6Cgppby1kb21haW5zCm1pcGktZHBoeS1yeDAKdXNiMi1waHlAZTQ1
MAouQC4uCgpvcgoKd2l0aCByZWcgdmFsdWVzIGZpcnN0OgoKLkAuLgplbW1jX3BoeTogcGh5QGY3
ODAKbWlwaS1kcGh5LXJ4MApwY2llLXBoeQoKPiAKPj4KPj4+ICsJCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzM5OS1taXBpLWRwaHktcngwIjsKPj4+ICsJCQljbG9ja3MgPSA8JmNydSBTQ0xL
X01JUElEUEhZX1JFRj4sCj4+Cj4+PiArCQkJCTwmY3J1IFNDTEtfRFBIWV9SWDBfQ0ZHPiwKPj4+
ICsJCQkJPCZjcnUgUENMS19WSU9fR1JGPjsKPj4KPj4gQWxpZ24gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXgo+Pgo+Pj4gKwkJCWNsb2NrLW5hbWVzID0gImRwaHktcmVmIiwgImRwaHktY2Zn
IiwgImdyZiI7Cj4+PiArCQkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszMzk5X1BEX1ZJTz47
Cj4+PiArCQkJI3BoeS1jZWxscyA9IDwwPjsKPj4+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
Pj4gKwkJfTsKPj4+ICsKPj4+ICAJCXUycGh5MDogdXNiMi1waHlAZTQ1MCB7Cj4+PiAgCQkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdXNiMnBoeSI7Cj4+PiAgCQkJcmVnID0gPDB4ZTQ1
MCAweDEwPjsKPj4KPj4KPiAKPiAKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
