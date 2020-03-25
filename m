Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF59A192AB4
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 15:03:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3iw6FG/xUJx4mlpXlKA0E3bAl4qC5VyGk4EGmwo6MU=; b=ZuaHq5qMRAWTkW
	1vd7dcpNtdEYW+JB0NTXq9mmOqLkeyBhcKG2G+tb6PYDdHPD9bpFFNlh2TEzzHsgj4UiI5kF9GxZH
	0b/ZmVrY5BReVQ33md758TGaC62So0OZM4yW5/omnJuS20dbBi6TAa7Y8IUTe0wjs7BhLwcwx2biW
	UGqwLmzZfxQQp3OXh85ay7U+GYTh2e6LoDiJsRDtx9v/TTaN7sPh6n082SRA7StYfRzbGhJ4LRQWB
	APygTVm83SjqofQBoA2pEJvqbjlxJw1g/b4z81pdURaby/7TAkOgQHQg3Xgh2bPTjlKWDSwEZj4E6
	QGtAK3x/ma7HxkswUFqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6cV-000310-SO; Wed, 25 Mar 2020 14:02:59 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6cS-00030J-PS
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 14:02:58 +0000
Received: by mail-qt1-x843.google.com with SMTP id t9so2165128qto.9
 for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2020 07:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=LQq3EFJ59LIxHUdp5oSLSjexBDEoJBV/NBKXaRpQgvc=;
 b=1OGHB3mXWgyadxhaLY3ieAeTgpSZKH4oRsUgiE3HazXkZEVAwqsCRLErTjKZtIQdyN
 fbkDrEC6S+VmzZgQboXDr9IDzkdf0gQ5BlpMljeciRq+LbVEaU/k/yarN+NAAI1/jg/7
 2vSDUIueLoLxp1spvUureG4jyqJ2ViAI7Iz3oUlmnKEZ60/P1Xi5uPW7BQ3FLPvwjlkx
 jTaYjo4FnyTKvfspmo/7mF6GezdoN0nwoodUN9z1Nd8WV5bJx9mZ+UwoTYYfHeqf/wgP
 sUG26792imTiGn9U3g/fcpbJb1ds+juIomMff0DjZZ9m1nJqhKVQMY1f61mKiT2dwF0W
 IRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=LQq3EFJ59LIxHUdp5oSLSjexBDEoJBV/NBKXaRpQgvc=;
 b=RpikgfHbeVcuXQN54HOxRGU7/qOLqHVYcJKsV4e2tu7TEmlvEbe2gseffTnt3KThPd
 p4HzVLw4buQvENsQmMZX2XjI00tVZCbXUvrtvmzMGNDeFzMMEl3CJCsyq/baZUbm5zO+
 Qz964qZ8J/SxSq8/6qYZtmnrih4NdhiarQge2eNCIAn+c8n6OL/R6+D0SQSJ1nNWAUtZ
 qgFeT/EdXwnAv+P/ItkLgJKee10OB1xvcjefUrovBlH8H5xAmuN5A2t3dRTDPqampXYx
 P/NO2yhREpYPEGEZKT8QPxygmAvbUL3vlhWoazy+mJ0pybYcysE1wwrjb9/L6gMNDvSD
 rP9A==
X-Gm-Message-State: ANhLgQ2uirKF/gt7PlAm72Yuh9HUIAOOnZMZdEioMmk4/tUpZCsLnYum
 oSOza5DNyFJKNnk4M36Jg4+6GjIWP3Mpzw==
X-Google-Smtp-Source: ADFU+vvlCeU0s4GsVkEXhSCM1T2ufqjJODHpGR+21Q3IE7jl3Boob14Pq3km6w6nKoKmA15mc4/Zvg==
X-Received: by 2002:ac8:6f46:: with SMTP id n6mr2978711qtv.119.1585144975048; 
 Wed, 25 Mar 2020 07:02:55 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id 79sm15313675qkg.38.2020.03.25.07.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 07:02:54 -0700 (PDT)
Message-ID: <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@collabora.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Wed, 25 Mar 2020 10:02:52 -0400
In-Reply-To: <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-4-ezequiel@collabora.com>
 <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_070256_971508_A7CC0439 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWVyY3JlZGkgMjUgbWFycyAyMDIwIMOgIDA5OjIyICswMTAwLCBIYW5zIFZlcmt1aWwgYSDD
qWNyaXQgOgo+IE9uIDMvMTgvMjAgMjoyMSBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4g
TGV0IHRoZSBjb3JlIHNvcnQgb3V0IHRoZSBudWFuY2VzIG9mIHJldHVybmluZyBidWZmZXJzCj4g
PiB0byB1c2Vyc3BhY2UsIGJ5IHVzaW5nIHRoZSB2NGwyX20ybV9idWZfZG9uZV9hbmRfam9iX2Zp
bmlzaAo+ID4gaGVscGVyLgo+ID4gCj4gPiBUaGlzIGNoYW5nZSBhbHNvIHJlbW92ZXMgdXNhZ2Ug
b2YgYnVmZmVyIHNlcXVlbmNlIGZpZWxkcywKPiA+IHdoaWNoIHNob3VsZG4ndCBoYXZlIGFueSBt
ZWFuaW5nIGZvciBzdGF0ZWxlc3MgZGVjb2RlcnMuCj4gCj4gVWgsIHdoeSByZW1vdmUgdGhpcz8g
Rm9yIG9uZSwgZG9lc24ndCB0aGlzIGNhdXNlIGZhaWxzIGluIHY0bDItY29tcGxpYW5jZT8KPiBB
bHNvLCB3aGlsZSBJIGFncmVlIHRoYXQgaXQgaXMgbm90IHRlcnJpYmx5IHVzZWZ1bCwgaXQgZG9l
c24ndCBodXJ0LCBkb2VzIGl0Pwo+IAo+IEFuZCB0aGUgVjRMMiBzcGVjIG1ha2VzIG5vIGV4Y2Vw
dGlvbiBmb3Igc3RhdGVsZXNzIGNvZGVjcyB3aXRoIHJlc3BlY3QgdG8gdGhlCj4gc2VxdWVuY2Ug
ZmllbGQuCj4gCj4gTmFja2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFs
bC5ubD4KClRoZSBzcGVjIGFsc28gZG9lcyBub3Qgc2F5IHdoYXQgaXQgbWVhbnMgZWl0aGVyLiBB
cyBhbiBleGFtcGxlLCB5b3UKaGF2ZSBzcGVjIGZvciBBTFRFUk5BVEUgaW50ZXJsYWNpbmcgbW9k
ZSB0aGF0IGNoYW5nZXMgdGhlIG1lYW5pbmcgb2YKdGhlIHNlcXVlbmNlLCBidXQgbm90IGZvciBh
bHRlcm5hdGUgSDI2NCBmaWVsZHMgKHdoaWNoIGNhbm5vdCBiZSBwYXJ0Cm9mIHRoZSBmb3JtYXQs
IHNpbmNlIHRoaXMgY2hhbmdlcyBvZnRlbikuIFdlIGFsc28gZG9uJ3QgaGF2ZSBzcGVjIGZvcgp0
aGUgdGhlIHNlcXVlbmNlIGJlaGF2aW91ciB3aGlsZSB1c2luZyBIT0xEIGZlYXR1cmVzLgoKSSdt
IHdvcnJpZWQgd2UgYXJlIGZhbGxpbmcgaW50byB0aGUgdGVzdCBkcml2ZW4gdHJhcCwgd2VyZSBw
ZW9wbGUKaW1wbGVtZW50IGZlYXR1cmVzIHRvIHNhdGlzZnkgYSB0ZXN0LCB3aGlsZSB0aGUgYWRk
ZWQgY29tcGxleGl0eSBkb24ndApyZWFsbHkgbWFrZSBzZW5zZS4gU2hvdWxkbid0IHdlIGNoYW5n
ZSBvdXIgYXBwcm9hY2ggYW5kIG9wdC1vdXQKZmVhdHVyZXMgZm9yIG5ldyB0eXBlIG9mIEhXLCBz
byB0aGF0IHdlIGNhbiBrZWVwIHRoZSBkcml2ZXJzIGNvZGUKc2FuZXI/Cgo+IAo+IFJlZ2FyZHMs
Cj4gCj4gCUhhbnMKPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVp
ZWxAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jIHwgMjcgKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+IGluZGV4IDBiMTIwMGZjMGUx
YS4uZWM4ODlkNzU1Y2Q2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fZHJ2LmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jCj4gPiBAQCAtOTQsMzIgKzk0LDIzIEBAIHN0YXRpYyB2b2lkIGhhbnRyb19q
b2JfZmluaXNoKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsCj4gPiAgCQkJICAgICAgdW5zaWduZWQg
aW50IGJ5dGVzdXNlZCwKPiA+ICAJCQkgICAgICBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0
KQo+ID4gIHsKPiA+IC0Jc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqc3JjLCAqZHN0Owo+ID4gIAlp
bnQgcmV0Owo+ID4gIAo+ID4gIAlwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5KHZwdS0+ZGV2KTsK
PiA+ICAJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwo+ID4gIAljbGtfYnVs
a19kaXNhYmxlKHZwdS0+dmFyaWFudC0+bnVtX2Nsb2NrcywgdnB1LT5jbG9ja3MpOwo+ID4gIAo+
ID4gLQlzcmMgPSB2NGwyX20ybV9zcmNfYnVmX3JlbW92ZShjdHgtPmZoLm0ybV9jdHgpOwo+ID4g
LQlkc3QgPSB2NGwyX20ybV9kc3RfYnVmX3JlbW92ZShjdHgtPmZoLm0ybV9jdHgpOwo+ID4gLQo+
ID4gLQlpZiAoV0FSTl9PTighc3JjKSkKPiA+IC0JCXJldHVybjsKPiA+IC0JaWYgKFdBUk5fT04o
IWRzdCkpCj4gPiAtCQlyZXR1cm47Cj4gPiAtCj4gPiAtCXNyYy0+c2VxdWVuY2UgPSBjdHgtPnNl
cXVlbmNlX291dCsrOwo+ID4gLQlkc3QtPnNlcXVlbmNlID0gY3R4LT5zZXF1ZW5jZV9jYXArKzsK
PiA+IC0KPiA+IC0JcmV0ID0gY3R4LT5idWZfZmluaXNoKGN0eCwgJmRzdC0+dmIyX2J1ZiwgYnl0
ZXN1c2VkKTsKPiA+IC0JaWYgKHJldCkKPiA+IC0JCXJlc3VsdCA9IFZCMl9CVUZfU1RBVEVfRVJS
T1I7Cj4gPiArCWlmIChjdHgtPmJ1Zl9maW5pc2gpIHsKPiA+ICsJCXN0cnVjdCB2YjJfdjRsMl9i
dWZmZXIgKmRzdDsKPiA+ICAKPiA+IC0JdjRsMl9tMm1fYnVmX2RvbmUoc3JjLCByZXN1bHQpOwo+
ID4gLQl2NGwyX20ybV9idWZfZG9uZShkc3QsIHJlc3VsdCk7Cj4gPiArCQlkc3QgPSB2NGwyX20y
bV9uZXh0X2RzdF9idWYoY3R4LT5maC5tMm1fY3R4KTsKPiA+ICsJCXJldCA9IGN0eC0+YnVmX2Zp
bmlzaChjdHgsICZkc3QtPnZiMl9idWYsIGJ5dGVzdXNlZCk7Cj4gPiArCQlpZiAocmV0KQo+ID4g
KwkJCXJlc3VsdCA9IFZCMl9CVUZfU1RBVEVfRVJST1I7Cj4gPiArCX0KPiA+ICAKPiA+IC0JdjRs
Ml9tMm1fam9iX2ZpbmlzaCh2cHUtPm0ybV9kZXYsIGN0eC0+ZmgubTJtX2N0eCk7Cj4gPiArCXY0
bDJfbTJtX2J1Zl9kb25lX2FuZF9qb2JfZmluaXNoKGN0eC0+ZGV2LT5tMm1fZGV2LCBjdHgtPmZo
Lm0ybV9jdHgsCj4gPiArCQkJCQkgcmVzdWx0KTsKPiA+ICB9Cj4gPiAgCj4gPiAgdm9pZCBoYW50
cm9faXJxX2RvbmUoc3RydWN0IGhhbnRyb19kZXYgKnZwdSwgdW5zaWduZWQgaW50IGJ5dGVzdXNl
ZCwKPiA+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
