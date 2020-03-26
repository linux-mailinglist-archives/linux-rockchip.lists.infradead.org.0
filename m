Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33054194682
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 19:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdrRdz7Rai2IS/VCcL34PnNlEd+33E4Nr0sjQ4zS7qs=; b=cgAV1cbgP0ffd4
	ybuZysCMKvtl+7GhkvYBlakZDATBw5GwjkRi39gBm/lNAIt/vb2RKvcYqmlhVuL6MNEdH+VPo6JoD
	AcVR6JaKMeUjg0iYSsJtuRoOekwuP7vqYjClZGdth3TpLWSE32PVJLM2RIzgfvepGITOo8WvjSfkp
	lmUBhmTJqEAGve5wZkGHIIvpJLtu2/6hv/B4ML3WH8TKkg1Xlirtv76rc3+5TVKLAzvJoRExo5H0Y
	Rtzbh/xwEe+PqEBade5O19cWouKEEp/4AYhBzSjySPzBq4nFdfJT9jO05rNY87gZZZdQvCBPjr+Xp
	GYcPuR1bzNvde7FiYs6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXGd-0000G4-Jn; Thu, 26 Mar 2020 18:30:11 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXGY-00088W-PT
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 18:30:08 +0000
Received: by mail-qv1-xf41.google.com with SMTP id o7so3564379qvq.8
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 11:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=L9DrCA/EQHd8jdwveo8WB0n14bq7yGLSzZRVaNtKOrs=;
 b=iB7rqAN6jeIbSZfKYuy8sMd7TSkM3YjZagIPsTb7Y89qtMEwT3aZ6XjqnYy+hmH/Z+
 oyhSxv4YgXavcDrKegi5kkVIaU7Z24Zd8FMe7pKWSl58bgrA3gRNNpWd0TFV/Vorwsex
 ei2qmtjpLBVAJ2UqNogppLnOkIkrnEaU8HDYG3dscfdBS3upd3h3KfsfeRrvNtVFwj2f
 IOnim0aOPoBnGNl55M+CK9ShbujuVgjx9wDDZEmsl7D3A/uCrTqh51lYO+8bh+THXJ1R
 4i98KCClqxK0YVegzHEvzR4Ukp5FPPMyRvh58TlJanklRmsBB784Kw4Z6lv7wSX3D04k
 T3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=L9DrCA/EQHd8jdwveo8WB0n14bq7yGLSzZRVaNtKOrs=;
 b=k90zR/296OYVwd4f/0TrDNBUqLwgSXYUMACYj2twYM5//pKYDTCaCHGk95RsWYyfiy
 sYy8rYfSWszV7pX4dkQHPL1sk6J1ezG/IExSssQ3Yc4dKpSLMMgeY9PGMDSoetpTptJI
 43V6Odjsyrba8u6OtjPcsHeU+xlP672DeZUydTkdmU1gzXwIajHPmFLCB3ZfY1EglsEK
 b30+G4TmuWrWvAf4Z+pE4wWIHiFova6wlYxAofTSvbaE7hmZEi7gc1EheZSmA6QxYwac
 Wd+JaBa8X35kPFAU2Jq/0jxNUtZnMcu9/DHmYX/+//Je2UMiSvMlW6vR2DBYW1gKj3+T
 aYhw==
X-Gm-Message-State: ANhLgQ3i1hqlruYkPRZWeD9YJ5nMCOHOprckTa5H5oZ4tZNiitJatjaF
 7FxRq66cVEviOdvKdYjavC1gsg==
X-Google-Smtp-Source: ADFU+vt6K8GAQVwSKHIYexBPxdvx1dHoDAis8RLP4ledoNV32sheix2hQWb8suQQAoBCFpRvETYj5Q==
X-Received: by 2002:ad4:4bc3:: with SMTP id l3mr9280133qvw.79.1585247404992;
 Thu, 26 Mar 2020 11:30:04 -0700 (PDT)
Received: from nicolas-tpx395.localdomain
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id l7sm1917676qkb.47.2020.03.26.11.30.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 11:30:03 -0700 (PDT)
Message-ID: <3fb1dcdbbf54051d9a8fee1d1498583c3a79cecd.camel@ndufresne.ca>
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil
 <hverkuil@xs4all.nl>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Thu, 26 Mar 2020 14:30:01 -0400
In-Reply-To: <648c8411353071a7e1ffd3576d268b01177ab678.camel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-4-ezequiel@collabora.com>
 <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
 <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
 <50d764ec-1c15-99bd-192b-9aa6ae5bf368@xs4all.nl>
 <648c8411353071a7e1ffd3576d268b01177ab678.camel@collabora.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_113007_001365_22725BA5 
X-CRM114-Status: GOOD (  31.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWVyY3JlZGkgMjUgbWFycyAyMDIwIMOgIDE3OjMwIC0wMzAwLCBFemVxdWllbCBHYXJjaWEg
YSDDqWNyaXQgOgo+ICAgIDEuIE9uIFdlZCwgMjAyMC0wMy0yNSBhdCAxNjoyOCArMDEwMCwgSGFu
cyBWZXJrdWlsIHdyb3RlOgo+ID4gT24gMy8yNS8yMCAzOjAyIFBNLCBOaWNvbGFzIER1ZnJlc25l
IHdyb3RlOgo+ID4gPiBMZSBtZXJjcmVkaSAyNSBtYXJzIDIwMjAgw6AgMDk6MjIgKzAxMDAsIEhh
bnMgVmVya3VpbCBhIMOpY3JpdCA6Cj4gPiA+ID4gT24gMy8xOC8yMCAyOjIxIFBNLCBFemVxdWll
bCBHYXJjaWEgd3JvdGU6Cj4gPiA+ID4gPiBMZXQgdGhlIGNvcmUgc29ydCBvdXQgdGhlIG51YW5j
ZXMgb2YgcmV0dXJuaW5nIGJ1ZmZlcnMKPiA+ID4gPiA+IHRvIHVzZXJzcGFjZSwgYnkgdXNpbmcg
dGhlIHY0bDJfbTJtX2J1Zl9kb25lX2FuZF9qb2JfZmluaXNoCj4gPiA+ID4gPiBoZWxwZXIuCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgY2hhbmdlIGFsc28gcmVtb3ZlcyB1c2FnZSBvZiBidWZm
ZXIgc2VxdWVuY2UgZmllbGRzLAo+ID4gPiA+ID4gd2hpY2ggc2hvdWxkbid0IGhhdmUgYW55IG1l
YW5pbmcgZm9yIHN0YXRlbGVzcyBkZWNvZGVycy4KPiA+ID4gPiAKPiA+ID4gPiBVaCwgd2h5IHJl
bW92ZSB0aGlzPyBGb3Igb25lLCBkb2Vzbid0IHRoaXMgY2F1c2UgZmFpbHMgaW4gdjRsMi1jb21w
bGlhbmNlPwo+ID4gPiA+IEFsc28sIHdoaWxlIEkgYWdyZWUgdGhhdCBpdCBpcyBub3QgdGVycmli
bHkgdXNlZnVsLCBpdCBkb2Vzbid0IGh1cnQsIGRvZXMgaXQ/Cj4gPiA+ID4gCj4gPiA+ID4gQW5k
IHRoZSBWNEwyIHNwZWMgbWFrZXMgbm8gZXhjZXB0aW9uIGZvciBzdGF0ZWxlc3MgY29kZWNzIHdp
dGggcmVzcGVjdCB0byB0aGUKPiA+ID4gPiBzZXF1ZW5jZSBmaWVsZC4KPiA+ID4gPiAKPiA+ID4g
PiBOYWNrZWQtYnk6IEhhbnMgVmVya3VpbCA8aHZlcmt1aWwtY2lzY29AeHM0YWxsLm5sPgo+ID4g
PiAKPiA+ID4gVGhlIHNwZWMgYWxzbyBkb2VzIG5vdCBzYXkgd2hhdCBpdCBtZWFucyBlaXRoZXIu
IEFzIGFuIGV4YW1wbGUsIHlvdQo+ID4gPiBoYXZlIHNwZWMgZm9yIEFMVEVSTkFURSBpbnRlcmxh
Y2luZyBtb2RlIHRoYXQgY2hhbmdlcyB0aGUgbWVhbmluZyBvZgo+ID4gPiB0aGUgc2VxdWVuY2Us
IGJ1dCBub3QgZm9yIGFsdGVybmF0ZSBIMjY0IGZpZWxkcyAod2hpY2ggY2Fubm90IGJlIHBhcnQK
PiA+ID4gb2YgdGhlIGZvcm1hdCwgc2luY2UgdGhpcyBjaGFuZ2VzIG9mdGVuKS4gV2UgYWxzbyBk
b24ndCBoYXZlIHNwZWMgZm9yCj4gPiA+IHRoZSB0aGUgc2VxdWVuY2UgYmVoYXZpb3VyIHdoaWxl
IHVzaW5nIEhPTEQgZmVhdHVyZXMuCj4gPiAKPiA+IEkgaGF0ZSBpdCB0aGF0IHRoZSBzcGVjIGNo
YW5nZXMgdGhlIHNlcXVlbmNlIG1lYW5pbmcgZm9yIEZJRUxEX0FMVEVSTkFURSwKPiA+IEkgYWx3
YXlzIHRob3VnaHQgdGhhdCB0aGF0IG1hZGUgZHJpdmVycyB1bm5lY2Vzc2FyaWx5IGNvbXBsaWNh
dGVkLiBVbmZvcnR1bmF0ZWx5LAo+ID4gdGhpcyBpcyBzb21ldGhpbmcgd2UgaW5oZXJpdGVkLgo+
ID4gCj4gPiBDdXJyZW50bHkgdGhlIHNwZWMgc2F5cyBmb3Igc2VxdWVuY2U6Cj4gPiAKPiA+ICJT
ZXQgYnkgdGhlIGRyaXZlciwgY291bnRpbmcgdGhlIGZyYW1lcyAobm90IGZpZWxkcyEpIGluIHNl
cXVlbmNlLiBUaGlzIGZpZWxkIGlzIHNldAo+ID4gIGZvciBib3RoIGlucHV0IGFuZCBvdXRwdXQg
ZGV2aWNlcy4iCj4gPiAKPiA+IFRoZSBvbmx5IHRoaW5nIG1pc3NpbmcgaGVyZSBpcyB0aGF0IGl0
IHNob3VsZCBzYXkgdGhhdCBmb3IgY29tcHJlc3NlZCBmb3JtYXRzIHRoaXMKPiA+IGNvdW50cyB0
aGUgYnVmZmVycywgc2luY2Ugb25lIGJ1ZmZlciB3aXRoIGNvbXByZXNzZWQgZGF0YSBtYXkgbm90
IGhhdmUgYSBvbmUtdG8tb25lCj4gPiBtYXBwaW5nIHdpdGggZnJhbWVzLgoKVGhhdCdzIGFsc28g
d2h5IEkgdGhpbmsgaXQncyBwcm9ncmFtYXRpY2FsbHkgdXNlbGVzcyBpbiB0aGF0IGNhc2UsIHRo
ZXJlIGlzIG5vCmxvZ2ljIGZvciB3aGljaCBpbnB1dC9vdXRwdXQgY2FuIGJlIHJlbGF0ZWQgdW5s
ZXNzIHlvdSBrbm93IHdoYXQgdGhlIGZyYW1pbmcgaXMuCgo+ID4gCj4gPiBUaGlzIGRlc2NyaXB0
aW9uIGZvciAnc2VxdWVuY2UnIHdhcyBuZXZlciB1cGRhdGVkIHdoZW4gY29tcHJlc3NlZCBkYXRh
IGZvcm1hdHMgd2VyZQo+ID4gYWRkZWQsIHNvIGl0IGlzIGEgYml0IG91dCBvZiBkYXRlLgo+ID4g
Cj4gPiA+IEknbSB3b3JyaWVkIHdlIGFyZSBmYWxsaW5nIGludG8gdGhlIHRlc3QgZHJpdmVuIHRy
YXAsIHdlcmUgcGVvcGxlCj4gPiA+IGltcGxlbWVudCBmZWF0dXJlcyB0byBzYXRpc2Z5IGEgdGVz
dCwgd2hpbGUgdGhlIGFkZGVkIGNvbXBsZXhpdHkgZG9uJ3QKPiA+ID4gcmVhbGx5IG1ha2Ugc2Vu
c2UuIFNob3VsZG4ndCB3ZSBjaGFuZ2Ugb3VyIGFwcHJvYWNoIGFuZCBvcHQtb3V0Cj4gPiA+IGZl
YXR1cmVzIGZvciBuZXcgdHlwZSBvZiBIVywgc28gdGhhdCB3ZSBjYW4ga2VlcCB0aGUgZHJpdmVy
cyBjb2RlCj4gPiA+IHNhbmVyPwo+ID4gCj4gPiBXaHkgd2Fzbid0IHRoZSBleGlzdGluZyBjb2Rl
IGluIHRoaXMgcGF0Y2ggc2FuZT8gU3VyZSwgd2UgY2FuIGNoYW5nZSB0aGUgc3BlYywgYnV0Cj4g
PiB0aGVuIDEpIGFsbCBleGlzdGluZyBkcml2ZXJzIG5lZWQgdG8gYmUgdXBkYXRlZCBhcyB3ZWxs
LCBhbmQgMikgdjRsMi1jb21wbGlhbmNlIG5lZWRzCj4gPiB0byBiZSBjaGFuZ2VkIHRvIHRlc3Qg
c3BlY2lmaWNhbGx5IGZvciB0aGlzIGNsYXNzIG9mIGRyaXZlcnMgYW5kIGVuc3VyZSB0aGF0IGZv
ciB0aG9zZQo+ID4gdGhlIHNlcXVlbmNlIGZpZWxkIGlzIHNldCB0byAwLiBOb3QgdG8gbWVudGlv
biBpbnRyb2R1Y2luZyBhbiBleGNlcHRpb24gaW4gdGhlIHVBUEkKPiA+IHdoZXJlIHRoZSBzZXF1
ZW5jZSBmaWVsZCBzdWRkZW5seSBpc24ndCB1c2VkIGFueW1vcmUuCj4gPiAKPiA+IEZyYW5rbHks
IEkgd291bGQgcHJlZmVyIHRoYXQgdGhlIHdob2xlIHNlcXVlbmNlIGhhbmRsaW5nIGlzIG1vdmVk
IHRvIHZpZGVvYnVmMi12NGwyLmMuCj4gPiBJdCByZWFsbHkgZG9lc24ndCBiZWxvbmcgaW4gZHJp
dmVycywgd2l0aCB0aGUgZXhjZXB0aW9uIG9mIGluY3JlbWVudGluZyB0aGUgc2VxdWVuY2UKPiA+
IGNvdW50ZXIgaW4gY2FzZSBvZiBkcm9wcGVkIGZyYW1lcy4KPiA+IAo+ID4gSSB0aGluayBJIHN1
Z2dlc3RlZCBpdCB3aGVuIHZiMiB3YXMgYmVpbmcgZGVzaWduZWQsIGJ1dCBhdCB0aGUgdGltZSB0
aGUgcHJlZmVyZW5jZQo+ID4gd2FzIHRvIGtlZXAgaXQgaW4gdGhlIGRyaXZlci4gTG9uZyB0aW1l
IGFnbywgdGhvdWdoLgo+ID4gCj4gCj4gRG8geW91IHRoaW5rIHdlIGNvdWxkIHRyeSB0byBtb3Zl
IHRoaXMgdG8gdGhlIGNvcmU/CgpJJ20gYWxzbyBoYXBweSBhcyBsb25nIGFzIGRyaXZlcnMgc3Rv
cCBoYXZpbmcgdG8gaW1wbGVtZW50IHRoaXMgZ2VuZXJpYwpzdGF0aXN0aWMuIE5vdGUsIHRoYXQg
b25seSBhcHBsaWVzIHRvIGV4aXN0aW5nIG0ybSwgd2Ugc3RpbGwgbmVlZCB0aGF0IGNvdW50ZXIK
dG8gZGV0ZWN0IGRyaXZlciBzaWRlIGZyYW1lIGRyb3BzIGluIENBUFRVUkUgb25seSBkZXZpY2Vz
IChsaWtlIFVWQyBjYW1lcmFzKS4KCj4gCj4gSSBtaWdodCBiZSBhYmxlIGZpbmQgc29tZSB0aW1l
IHRvIHRyeSB0aGF0Lgo+IAo+ID4gQW5kIGFub3RoZXIgcmVhc29uIHdoeSBJIHdhbnQgdG8ga2Vl
cCBpdDogSSBmaW5kIGl0IGFjdHVhbGx5IHVzZWZ1bCB0byBzZWUgYSBydW5uaW5nCj4gPiBjb3Vu
dGVyOiBpdCBoZWxwcyBrZWVwaW5nIHRyYWNrIG9mIGhvdyBtYW55IGJ1ZmZlcnMgeW91J3ZlIHBy
b2Nlc3NlZCBzaW5jZSB5b3Ugc3RhcnRlZAo+ID4gc3RyZWFtaW5nLgo+ID4gCj4gCj4gKzEKPiAK
PiA+IEZpbmFsbHksIHRoZSByZW1vdmFsIG9mIHRoZSBzZXF1ZW5jZSBjb3VudGVyIHNpbXBseSBk
b2VzIG5vdCBiZWxvbmcgaW4gdGhpcyBwYXRjaC4KPiA+IAo+IAo+IEFncmVlZCwgbm8gY29tcGxh
aW50cyBvbiBteSBzaWRlLgo+IAo+IEkgYW0gYWN0dWFsbHkgaGFwcHkgYWJvdXQgdGhpcyBmZWVk
YmFjay4KPiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
