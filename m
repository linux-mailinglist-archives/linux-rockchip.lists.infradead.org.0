Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4E39C60E
	for <lists+linux-rockchip@lfdr.de>; Sun, 25 Aug 2019 22:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7R47SYAEchbc8B0R9pZqeUKq5t3NQjtMolpe51DqwMI=; b=Aws13IBd1QwNA4
	SbSo2TvM0Bke89kGfxkrEsfM4wCCvGg+cj5cwTNRuSuNkJVjqFBoPQprg6amuU1ZD2Yj6WC+icQy1
	DO2gws5sdBPBt46TCh0rXTS1x7oNjfQ+9yx173gId5TYpw3DZYUvImS3fcGQBbpMJVZd6TmRCZRLY
	hV9I52adLpXieJXyTAjLVfE4ud3xpkULLNv8AEF+2s7f4wnv8hhLnfBdKPeCkXDIWevWmOmhkzSDy
	Xt7GnhY3G2Cla0aB2qfzvrZ5MBD5JrtfQKosOC1NG5z2ZTWznWIIy0Oh/tkYuUEMaGrgRaE85kExl
	OCLFGgKiXM1y5ZFcUgBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yuM-0005Yy-BJ; Sun, 25 Aug 2019 20:14:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1yuI-0005YC-RT
 for linux-rockchip@lists.infradead.org; Sun, 25 Aug 2019 20:14:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id j4so23986296iog.11
 for <linux-rockchip@lists.infradead.org>; Sun, 25 Aug 2019 13:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iILCSM+GpXe+GotSqOKsm/Pvnl/PS9+yVmGGdUf7L0w=;
 b=A6dRzF80BSrKy8lp2AiD5Y0HMyU9BCtVeK2c/+4dctUYZ/uJJPrNJS4I/ow8wDDU+X
 4rasQU0i4yoA6Ui0WMT6YYLeWwKMvF85DXLV1McjkuzExbLd1NHHK9oHJAOWSXAkBuw8
 tLO1XLOLbodgCt40I5gKXm709SskHMXf+mXmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iILCSM+GpXe+GotSqOKsm/Pvnl/PS9+yVmGGdUf7L0w=;
 b=gx2IxHD09loUB3A9FtkODagR/JzaM5A8qcj/ecr9M906xBtOzelXnbbj/QDNjvL3gK
 7khquyzkhFWVykU+1l/dnvP7M13ikYPlixSQuNIvZQGYvx0ql8c6OVNxPE8CEYwAbtg3
 ZgJJoD/S8VfnnAj9FyrbvHsnp73oXlS4I1+FKEBbLiMih90X3ZkDgeqsb2eYCml/WhZC
 PycEt4FnZKL5rlko1cTbTrdh+e2JqA2VamtwSg8We2Z3X4GI3JP/eHifCF0rEfNbtRJW
 8HVueaqUo/ecwlG+T/eTiM6X+Vwv9A4YjANV1/T64sDYJD8ylf5YoQ5dGOVvN4iOQivC
 Ktsg==
X-Gm-Message-State: APjAAAUthtQrlVsSUv4pYGhs5sQr2gezygxq9aVZ3SJLDVZrPBDhkVDN
 Jk7OR+H75Rf0oD3Hg8yBvpkjaDajDkmwnOIPuZEMUMeI
X-Google-Smtp-Source: APXvYqxXgo8OorDrMO8fdDI1KNIlwTALm6jxLpoTpI+KsCd8zqSKc9dshP+qBboDNZFODDI4H5bJCBIskqNMu7RtUhg=
X-Received: by 2002:a6b:ea12:: with SMTP id m18mr21067656ioc.173.1566764067878; 
 Sun, 25 Aug 2019 13:14:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-13-jagan@amarulasolutions.com>
 <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
In-Reply-To: <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 26 Aug 2019 01:44:16 +0530
Message-ID: <CAMty3ZC6xKM3VaKEjtMGDu4mLamuHLPP8DLc_L2KdDD9kzOrxw@mail.gmail.com>
Subject: Re: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_131435_317855_B4B5DF64 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjEzIFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NywgSmFnYW4g
VGVraSB3cm90ZToKPiA+IERpc2FibGUgd2F0Y2hkb2cgZm9yIFRQTCwgc2luY2UgdGhlcmUgaXMg
bm8gc3VwcG9ydCBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KPiA+IC0tLQo+ID4gICBpbmNsdWRlL2NvbmZpZ3MvcmszMzk5
X2NvbW1vbi5oIHwgNSArKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggYi9p
bmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCj4gPiBpbmRleCA4ZGYwMTgwMjg0Li42N2I0
OGUwM2JhIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+
ID4gKysrIGIvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+ID4gQEAgLTQ2LDYgKzQ2
LDExIEBACj4gPiAgICNkZWZpbmUgQ09ORklHX1NZU19TRFJBTV9CQVNFICAgICAgICAgICAgICAg
MAo+ID4gICAjZGVmaW5lIFNEUkFNX01BWF9TSVpFICAgICAgICAgICAgICAgICAgICAgIDB4Zjgw
MDAwMDAKPiA+Cj4gPiArI2lmZGVmIENPTkZJR19UUExfQlVJTEQKPiA+ICsjIHVuZGVmIENPTkZJ
R19XRFQKPiA+ICsjIHVuZGVmIENPTkZJR19XQVRDSERPRwo+ID4gKyNlbmRpZgo+Cj4KPiBJdCB3
aWxsIGJlIGJldHRlciB0byB1c2UgQ09ORklHXyR7U1BMX1RQTH1XRFQgaW4gd2F0Y2hkb2cgTWFr
ZWZpbGUsCj4KPiBiZWNhdXNlIGFsbCB0aGUgU29DIG5lZWRzIHRyZWF0IHRoaXMgZHJpdmVyIHNl
cGFyYXRlIGluIFRQTC9TUEwvVS1Cb290Cj4gcHJvcGVyLgoKRW5hYmxpbmcgVFBMICh2aWEgRE0g
b3Igc28pIGNhbm5vdCBiZSBhbiBvcHRpbWFsIHNvbHV0aW9ucyBhcyBvZiBub3csCnNpbmNlIGlm
IGl0IGNvbnRpbnVvdXNseSByZXNldHRpbmcgd2UgbmVlZCB0byB0YWtlIGJvb3Qgc3dpdGNoIGJh
c2VkCm9uIGJvb3Rjb3VudCwgaWUgcG9zc2libGUgd2l0aCBTUEwgYW5kIFUtQm9vdCBwcm9wZXIg
bm93LiBNYWtpbmcgYQpib290IHN3aXRjaCB0byBUUEwgbWlnaHQgaW5jcmVhc2UgY29kZSBzaXpl
LCBzbyB3aWxsIGNoZWNrIHRoaXMKZGVjaXNpb24gbGF0ZXIgYmFzZWQgb24gdGhlIHJlcXVpcmVt
ZW50LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
