Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4608D3E3
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 14:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fPUgK5cP2s3LuiNDb4mCgKFNfT2QztONTniQNU6ImKM=; b=BsyLb1YkzA/7JWQt/k0FwUCII
	J8FuSIehGWb2AFO9bV2J82P4RnCgXttBBUlrHUBCSL89PI1snOUnir5HvNtVA8mN/L3NLS1owLeU8
	SBU+AOjwAWF47Vvph4ZFZ5PhGHDOYn2Ikb00pr9UHMCl7H09Dt3rbNrQoitByswfx4Yv7QOgStl4Z
	cgxU+0ucVTuzaTAz3oJhulrGSUlGcyYMJyps7tth1V5UU0lC5SxDydOCkIkLv2IsRcPTq0+dXm6Nr
	AtlwmW/Hk4v3l9iVOS6PimiQP8sODsKrVYFQ+uiaR/4ZqRd3nXpTlxLdtXziyhFm2rXU4YmpJB/tF
	WD68JSj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsnB-0007GH-CH; Wed, 14 Aug 2019 12:54:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsmu-00073y-2u; Wed, 14 Aug 2019 12:54:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id o4so4372298wmh.2;
 Wed, 14 Aug 2019 05:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=wnzpQNcThUX3QcXowxnBBqL4j7IIg0MRcsVT4jZ+WQ0=;
 b=WwwUTaFUjx3mwTYy5bqQydNTcjvb4Mj3YTzlRP+WWEevgrRkOs6SNV6SQIjWAXZKSJ
 5qrhxomUmXZJUtK4teuc5qDa1xXeToy095gJLHKfRdh0CfjwEAWazg5b6yJOir6Qls/Y
 aVPqNQtRo2Ic1NDBkpxyyGZsV74K5wUv9Ayut3OrQklqElanK1V/Gt5ew3jnAT3rOY2h
 kyjKupMoC8hrHtUWKHFUoz5YizXy4wAmH/oOq4MtOY/HDXwOiry6kYcavF+YYBq+XtyF
 GQ2iXY3JB6qRjxzRhqdO3jyhgauwFzFpE9TW5GDxuf+NuFWpOzvOhbl24OGR2vn823Hh
 LOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=wnzpQNcThUX3QcXowxnBBqL4j7IIg0MRcsVT4jZ+WQ0=;
 b=ZQOKhwkg3WJY27Xl3z2TStm3z9CjavbYJt5MBn4KbtzJ571eHF5XO7LlOE1hZxM/s3
 gq1Ubz8AtB7D5trQ5H0sBkZzEgyvONcIZT1V3WouFuu3t2rKBka/tRIQFOSaQuotKmWw
 gxZIxUtByGjTHObFHdpJGmPbujwLxMtG1BHEIVP15DZBfUIEHhC/MFF9pElP3O0hKjRN
 I/3UOIbMyUZllmrhGaxuCROxq+TlF49VFV7MuLu9fDbdIo9ayvukzC0Rzp4mS31fSIX/
 BFflgQOG/raMSwCMal2RNmwccFhydoLhdD2ynXzxIrPzq70j3er2XfDTZ+P7Dc0kBBzx
 9WZA==
X-Gm-Message-State: APjAAAUELIQy8WBPOSZLGiKZsgEoQQ07dhSnHSrn1yxoEwkitl6SvSFs
 bZN6W2tA6D8aMCZotj9Orl8=
X-Google-Smtp-Source: APXvYqx6AefTr2LbCPjkcPD6r87zgcK6uLcRCUKzw5qoY3RHcLdPUUBtabUtohdhw9NKRmdXApfuFw==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr4099609wma.53.1565787238388; 
 Wed, 14 Aug 2019 05:53:58 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id k124sm10048136wmk.47.2019.08.14.05.53.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 05:53:57 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: kexec on rk3399
Date: Wed, 14 Aug 2019 14:53:55 +0200
MIME-Version: 1.0
Message-ID: <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_055400_150945_BDF1C85C 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6MzE6MjcgUE0gQ0VTVCwgVmljZW50ZSBCZXJnYXMg
d3JvdGU6Cj4gSGksIGkgaGF2ZSBiZWVuIHJ1bm5pbmcgbGludXggb24gcmszMzk5IGJvb3RlZCB3
aXRoIGtleGVjIGZpbmUgdW50aWwgNS4yCj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1l
bW9yeSBjb3JydXB0aW9uIGlzc3VlcyBhcyByZXBvcnRlZCBoZXJlOgo+IGh0dHA6Ly9sa21sLml1
LmVkdS9oeXBlcm1haWwvbGludXgva2VybmVsLzE5MDYuMi8wNzIxMS5odG1sCj4ga2V4ZWMgaGFz
IGJlZW4gaWRlbnRpZmllZCBhcyB0aGUgcHJpbmNpcGFsIHJlYXNvbiBmb3IgdGhlIGlzc3Vlcy4K
Pgo+IEl0IHR1cm5zIG91dCB0aGF0IGtleGVjIGhhcyBuZXZlciB3b3JrZWQgcmVsaWFibHkgb24g
dGhpcyBwbGF0Zm9ybSwKPiBpIHdhcyBqdXN0IGx1Y2t5IHVudGlsIHJlY2VudGx5Lgo+Cj4gUGxl
YXNlLCBjYW4geW91IHByb3ZpZGUgc29tZSBkaXJlY3Rpb25zIG9uIGhvdyB0byBkZWJ1ZyB0aGUg
aXNzdWU/CgpUaGFuayB5b3UgYWxsIGZvciB5b3VyIHN1Z2dlc3Rpb25zIG9uIHdoZXJlIHRoZSBp
c3N1ZSBjb3VsZCBiZS4KCkl0IHNlZW1zIHRoYXQgaXQgd2FzIHRoZSBVU0IgZHJpdmVyLgpOb3cg
dXNpbmcgdjUuMi44IGJvb3RlZCB3aXRoIGtleGVjIGZyb20gdjUuMi44IHdpdGggYSB3b3JrYXJv
dW5kIGFuZApzbyBmYXIgc28gZ29vZC4gSXQgaXMgYmVpbmcgdGVzdGVkIG9uIHRoZSBTYXBwaGly
ZSBib2FyZC4KClRoZSB3b3JrYXJvdW5kIGlzOgotLS0gYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMt
b2Ytc2ltcGxlLmMKKysrIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCkBAIC0x
MzMsNiArMTMzLDEzIEBACiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB2b2lkIGR3YzNfb2Zfc2lt
cGxlX3NodXRkb3duKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCit7CisJc3RydWN0IGR3
YzNfb2Zfc2ltcGxlICpzaW1wbGUgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKworCXJl
c2V0X2NvbnRyb2xfYXNzZXJ0KHNpbXBsZS0+cmVzZXRzKTsKK30KKwogc3RhdGljIGludCBfX21h
eWJlX3VudXNlZCBkd2MzX29mX3NpbXBsZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAK
KmRldikKIHsKIAlzdHJ1Y3QgZHdjM19vZl9zaW1wbGUJKnNpbXBsZSA9IGRldl9nZXRfZHJ2ZGF0
YShkZXYpOwpAQCAtMTkwLDYgKzE5Nyw3IEBACiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZl
ciBkd2MzX29mX3NpbXBsZV9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IGR3YzNfb2Zfc2ltcGxlX3By
b2JlLAogCS5yZW1vdmUJCT0gZHdjM19vZl9zaW1wbGVfcmVtb3ZlLAorCS5zaHV0ZG93bgk9IGR3
YzNfb2Zfc2ltcGxlX3NodXRkb3duLAogCS5kcml2ZXIJCT0gewogCQkubmFtZQk9ICJkd2MzLW9m
LXNpbXBsZSIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IG9mX2R3YzNfc2ltcGxlX21hdGNoLAoKSWYg
dGhpcyBwYXRjaCBpcyBPSyBhZnRlciByZXZpZXcgaSBjYW4gcmVzdWJtaXQgaXQgYXMgYSBwdWxs
IHJlcXVlc3QuClNob3VsZCBhIHNpbWlsYXIgY2hhbmdlIGJlIGFwcGxpZWQgdG8gZHJpdmVycy91
c2IvZHdjMy9jb3JlLmMgPwoKUmVnYXJkcywKICBWaWNlbsOnLgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
