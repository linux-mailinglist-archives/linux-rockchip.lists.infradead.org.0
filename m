Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7163121EF6
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 00:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRIBSEszo6aEouH06FW2BQqk2z7EuaVC21Evoew4Ia8=; b=iq8HXhWTYoPVZk
	h1rdSWpzqY3H04SDHNzdkel0nBcSRLHxT422BVhcMskX9gZ4xdxUnVCBNbGy3axHD66HgYfeh+NBm
	qE/Kg6AqtD1qhcM+yks+Fb3QLbrX1FqJyAQwtVRu9CwskhJC74IvYUSnN+kSUiUiUuVQXK+1B0bjg
	MV+VVkHhnOARH26OnV+EWbK4Wi8T4ogbCzWmFZ9LNaeGWv5ncJyXKC4YgcDjb3VlFsxqusS2sKHTM
	/0+BkTbb2ibvEojF++qz4Rt0+US+y/wjj9Bk655F5+V/34mA+yXjGis6jnQa8mcsaeafuYx61ms9L
	ONZ8kIdxFQdst/NmpgfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igzok-0002S7-0w; Mon, 16 Dec 2019 23:30:22 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igzog-0002RN-Ac
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 23:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576539011;
 bh=T33zj+Q8o1ca1lKFKadu4ur84PQkmWBSsKv2IObMR+c=;
 h=X-UI-Sender-Class:From:Subject:To:Cc:References:Date:In-Reply-To;
 b=Y2D3pqRK5YD462THyvD9j9NJanlruny4ciGapaDzX8GuVqAXXhmJ8fBUws8+do105
 1AeJS/1392c9eZ1RJ43bt2cQWsy6LXK6osYSPzmjejEK3y06cDpV1C+nFflz01LnuA
 L0kxrLlbV+lHq0VYpSrnLuKHuVObv+rZ9uyhPh2w=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.13]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LhvUI-1hvIjw3Qck-00nCgw; Tue, 17
 Dec 2019 00:30:11 +0100
From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
To: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
 <20191216111219.GB2369@dell>
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3c78d334-9110-e88c-84d0-2f41c28a6317@web.de>
Date: Tue, 17 Dec 2019 00:30:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191216111219.GB2369@dell>
Content-Language: en-GB
X-Provags-ID: V03:K1:aQQt6gEvfZZSpnuGPpd2MPL5+550TSfsxGXFdGHveeQEcNHcEeH
 OPUpGN+ZJG7f08aSwh1pSIt3ckLM8ihVwuGwaN2TjcB9pdAgAp06Y6aDYILYrhBC8+LLlOT
 n7xJ+JMqosMaHDMC6zHIfEK3B9/LsFt8gSRttTxHYfBA32Yywv8rFGBjpFIAZeqiHAT76Q9
 GKjVeRnZMeO+rl2EgAc8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oAJENRqkylY=:MySoNGiB9KMAF5Zs9aBAmX
 wO/biDD9FkD0P9wxQJd4ONP68yrRac3UnLfVnpbkSHX2SBzkZO8pFL+98xzpzwGTiVUk/a89O
 VzpbBi3OEyo6P5MbPDtzINQg+7+yfJNOMa0yQBr2VpoTCb2aV445kpIOsnxgcMmKQad49eaSs
 SZnqJQxMeml0L+1nzEPBkyZF7x6dEnMMr0/e1CVso3Teets79tU5/q+uFbe7Cy5ZoEKzjCF0v
 fdqKDqq5P0Os8nkSS9HkEz4gX/eTCMMx9vh7YoqFCxLHxvKoCaIkdwgQwula6jji8YR00qq49
 huNZi/QvrAQVYyAwE5v5t65hTsYVCkHEMLgdC/2j181TEUgr4KZhN58eAIUVwmuSnvsrpSSJq
 V7QIUsLns9Joe89czsBGX/f7lxPrgJDqpqn8QyUYdD1oy+pWH/FIFI8HgDG5udDAAEEjo3IyW
 H4Egblqe6alR36xfNHj77SUbkUagbcbyA3TZ4atojg/OZEX+nxzkBCr/Z6DZXs6BUP7hGuXW/
 Mlbq/Ag99dtekzqb7CRbs0GxfHrW27SO2fl/5tSp/Wr5ZDxaNvH7dK7if80u08bhEET9uoAx3
 Qqy9oMLzgNyeRgtkPKwb/FXST3Qkatw/MxA5oPYvtKFJf96cQPpkXWJrTiKHqKCKrmtth4ZqJ
 mTiV3IcDqvIzF9a7RlsiWlQBy/VVQ+TjNjA0XRFm5lpzM5DOLbZdw9Z/FFNGB/0Ms1w3XcyDZ
 GyuDY7P2oRKVEcUhQ2SEFKINRohmWdHTV0HZrewQpcU+Vfgvp9JlYBW4rp2tcYOKiJNHj1vaw
 m8XdiSP7jQ7g651qDV5rBRWc2VtbXFxlAdPePaZjdmz19vtiv4NlsTOiTPSzhuS4Xq9ZJcDlX
 4NWV9guDiu0rYxWgPsWLcq2NKcXel3HNpGoiflf9eMnaBRVejr8DIF9Tbun6iXPSYveLaMoFU
 fUAx2uWZ+dtzTkl3jqaAZmebcksw+szMiJMQtat1bcO3UV1GEDRer/sWs5IHsfamruRhKsxME
 JcKNRjF3j8VHz2ICFOaCUq0Anv0LJ0/mQbY+C6ZhAXTpmzXR2QS9m2pv29lSlrLjhsTIK0QK8
 Y/pg97g+Aq4f3FrwFOfVkaf3DJDYFBNkOuY4Dl0XTsH992ZktkUAJzw+4Tk7vM1acWzg23fAr
 GEHwKW45rSG8pqNKig08CzIDPvcfZRNFeXZYOMoQNiz9CtnJXXhysQBz58Vh9xEvS6BgAnq67
 AyCBWX8SSgbUXBM8g3NY8ZHwI7Rkfj7lv0wwvtQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_153018_702907_2FAC21A3 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org,
 Daniel Schultz <d.schultz@phytec.de>, linux-kernel@vger.kernel.org,
 heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTYuMTIuMTkgMTI6MTIsIExlZSBKb25lcyB3cm90ZToKPiBPbiBUdWUsIDEwIERlYyAyMDE5
LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4KPj4gSGkgYWxsLAo+Pgo+PiBJbiB0cnlpbmcgdG8gZGVi
dWcgc3VzcGVuZCBpc3N1ZXMgb24gbXkgUkszMzI4IGJveCwgSSB3YXMgbG9va2luZyBhdAo+PiBo
b3cgdGhlIFJLOHh4IGRyaXZlciBoYW5kbGVzIHRoZSBSSzgwNSBzbGVlcCBwaW4sIGFuZCBmcmFu
a2x5IHRoZSB3aG9sZQo+PiBkcml2ZXIgc2VlbWVkIHVudGlkeSBlbm91Z2ggdG8gd2FycmFudCBz
b21lIGNsZWFudXAgYW5kIG1pbm9yIGZpeGVzCj4+IGJlZm9yZSBnb2luZyBhbnkgZnVydGhlci4g
SSd2ZSBiYXNlZCB0aGUgc2VyaWVzIG9uIHRvcCBvZiBTb2VyZW4ncwo+PiAibWZkOiByazgwODog
QWx3YXlzIHVzZSBwb3dlcm9mZiB3aGVuIHJlcXVlc3RlZCIgcGF0Y2hbMV0uCj4+Cj4+IE5vdGUg
dGhhdCBJJ3ZlIG9ubHkgaGFkIHRpbWUgdG8gYnVpbGQtdGVzdCB0aGVzZSBwYXRjaGVzIHNvIGZh
ciwgYnV0IEkKPj4gd2FudGVkIHRvIHNoYXJlIHRoZW0gZWFybHkgZm9yIHRoZSBzYWtlIG9mIGRp
c2N1c3Npb24gaW4gcmVzcG9uc2UgdG8KPj4gdGhlIG90aGVyIHRocmVhZFsyXS4KPj4KPj4gUm9i
aW4uCj4+Cj4+IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMjc5MjQ5
Lwo+PiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTI3Njk0NS8KPj4K
Pj4gUm9iaW4gTXVycGh5ICg0KToKPj4gICBtZmQ6IHJrODA4OiBTZXQgZ2xvYmFsIGluc3RhbmNl
IHVuY29uZGl0aW9uYWxseQo+PiAgIG1mZDogcms4MDg6IEFsd2F5cyByZWdpc3RlciBzeXNjb3Jl
IG9wcwo+PiAgIG1mZDogcms4MDg6IFJlZHVjZSBzaHV0ZG93biBkdXBsaWNhdGlvbgo+PiAgIG1m
ZDogcms4MDg6IENvbnZlcnQgUks4MDUgdG8gc3lzY29yZS9QTSBvcHMKPj4KPj4gIGRyaXZlcnMv
bWZkL3JrODA4LmMgICAgICAgfCAxMjIgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggfCAgIDIgLQo+PiAgMiBmaWxlcyBj
aGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA3NCBkZWxldGlvbnMoLSkKPiBOb3Qgc3VyZSB3aGF0
J3MgaGFwcGVuaW5nIHdpdGggdGhlc2UgKGNvbXBldGluZz8pIHBhdGNoLXNldHMuICBJJ20gbm90
Cj4gcGxhbm5pbmcgb24gZ2V0dGluZyBpbnZvbHZlZCB1bnRpbCB5b3UgZ3V5cyBoYXZlIGFycml2
ZWQgYXQgYW5kIGFncmVlZAo+IHVwb24gYSBzaW5nbGUgc29sdXRpb24uCj4KTXkgdW5kZXJzdGFu
ZGluZyBpcyBsaWtlIHRoaXM6CgpUaGUgcGF0Y2ggWzFdIGZpeGVzIHBvd2VyLW9mZiB0byB1c2Ug
dGhlIG1ldGhvZCByZXF1ZXN0ZWQgaW4gdGhlCmRldmljZXRyZWUuIFRoaXMgcGF0Y2ggc2VyaWVz
IG9uIHRvcCBvZiB0aGF0IGNsZWFucyB1cCB0aGUgcms4MDgKcG93ZXItb2ZmIGNvZGUsIHdoaWNo
IHBlcmZlY3RseSBtYWtlcyBzZW5zZSBmb3IgbWUuIEkgdGhpbmsgdGhlc2UgMgpwYXRjaCBzZXJp
ZXMgYXJlIG5vdCBjb250cm92ZXJzaWFsIGFzIHN1Y2guCgpBbmQgdGhlbiB3ZSBoYXZlIHRoZSBz
ZXJpZXMgWzJdLCB3aGljaCBpcyBhIG1peCBvZgotIHNvbWUgY2xlYW4tdXAKLSBjb252ZXJ0aW5n
IHRoZSBleGlzdGluZyBjb2RlIHRvIHVzZSBzeXNjb25fc2h1dGRvd24gZm9yIGFjdHVhbCBwb3dl
ci1vZmYKClJvYmluLCBIZWlrbywgYW5kIG15c2VsZiBhZ3JlZSB0aGF0IHRoZSBzaHV0ZG93biBt
ZXRob2QgaW50cm9kdWNlZCBpbgpbMl0gaXMgZnVuZGFtZW50YWxseSB3cm9uZy4gQWxsIHN5c2Nv
bl9zaHV0ZG93biBtZXRob2RzIG9mIGFsbApyZWdpc3RlcmVkIHN5c2NvbnMgaGF2ZSB0byBydW4g
YmVmb3JlIHRoZSBhY3R1YWwgc2h1dGRvd24sIHdoYXQgaXMKdHJpZ2dlcmVkIGluIHBtX3Bvd2Vy
X29mZi4gVGhpcyBpcyBob3cgaXQgd29ya3Mgbm93LCBhbmQgd2hhdCBpcyB0aGUKcmlnaHQgd2F5
IHRvIGRvIGl0LiBQYXRjaCBzZXJpZXMgWzJdIGJyZWFrcyB0aGlzIHByb21pc2Ugc2luY2UgaXQg
ZG9lcwp0aGUgYWN0dWFsIHNodXRkb3duIGluIHRoZSBtaWRkbGUgb2YgdGhlIGNoYWluIG9mIHN5
c2Nvbl9zaHV0ZG93biBoYW5kbGVycy4KCkluIHRoZSBkaXNjdXNzaW9uIGFib3V0IHNlcmllcyBb
Ml0gQW5hbmQgcmVwZWF0ZWRseSB0YWxrcyBhYm91dCByZXN0YXJ0CnByb2JsZW1zLiBCdXQgdGhp
cyByazgwOCBtZmQgZHJpdmVyIGlzIG5vdCBpbnZvbHZlZCBpbiByZXN0YXJ0LCBhbHNvCnBhdGNo
IHNlcmllcyBbMl3CoApkb2VzIG5vdCBjaGFuZ2UgdGhhdC4gU28gSSBjYW5ub3Qgc2VlIHdoYXQg
c2hvdWxkIGJlIHRoZSBwb2ludCBoZXJlLgoKVGhlcmUgd2FzIGFuIGVhcmxpZXIgYXR0ZW1wdCBb
M10gdG8gZW5oYW5jZSB0aGlzIHJrODA4IG1mZCBkcml2ZXIgZm9yCnJlc3RhcnQuIEknbSBub3Qg
c3VyZSwgaG93ZXZlciwgd2hhdCBoYXBwZW5lZCB0byB0aGlzLiBGb3IgbWUgaXQgY291bGQKbWFr
ZSBzZW5zZSB0byByZWltcGxlbWVudCBzdWNoIHJlc3RhcnQgZnVuY3Rpb25hbGl0eSBvbiB0b3Ag
b2YgdGhpcwoibWZkOiBSSzh4eCB0aWR5dXAiIHNlcmllcy4KClJlZ2FyZHMsClNvZXJlbgoKWzNd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC85MzQzMjMvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
