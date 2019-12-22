Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5DA128D9E
	for <lists+linux-rockchip@lfdr.de>; Sun, 22 Dec 2019 12:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Foxud5F/S+5AQhsyWAhO5+0caVK4IDIb9I5cZY3EmUM=; b=XCi6DI5D/hJmkWYDGJNGO0PYs
	o48Yq883NOOAG/NfX6dd/NQGcoTanHBHPHTRVfbcsH4rREN2ZwyswyrvFjszd8EWbQwuvLNu4K0PJ
	bWBtTDMDDNJlKB4sX6zvlhBsxMaQgF2UvJDzq5FIfzCJS747bt3u8A0NGfMKv+7t9R0YlFIawTwhx
	ryPF9oiDwfnSCg7JavB32GPBdEtKkZeN2zsPr38sMlsZ6ImW6CcD2SSC+Z2xjr4Y/YeywmwHfdj5K
	6j7646SmYJyZ6so/WNwmNXuap5V4rSH/lZfoYXrasai7pvlTokQ1OUDk2xNxD75F505fNxRVGMV9j
	UxfpHAObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iizWo-0003T4-IM; Sun, 22 Dec 2019 11:36:06 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iizWj-0003SN-9T
 for linux-rockchip@lists.infradead.org; Sun, 22 Dec 2019 11:36:04 +0000
Received: by mail-ed1-x52b.google.com with SMTP id m8so12886566edi.13
 for <linux-rockchip@lists.infradead.org>; Sun, 22 Dec 2019 03:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=uBauo2l+v2JM8A0Hc4jqiJ1sPDazqxs66tAv+ODVBaI=;
 b=m6VvlMLqAvgDVv2hShxTvDIX5ZYE6790CXIVLuCo/u7gFNSVv0zUnat3HTi9posQIw
 57OT97ar5dQ+1Ju4WInBPNxefDJbnGjmkkOBI+geSgbBpDCc/lQivi2Te1SQCzFOK0q8
 Xbrighm+cRfscmW6UeQySXLWhjaw0D6cfRyodLoCm549rGJOdnoKXEg+mnaqXVYUryik
 XNdH2NwmfgKBmzky2NBbCHd71M7s+7su7DzvQOCJ9LsB9LETOr9LatQAt5k8cO8KjN39
 5px7yYDxHUTNJ7NIC+UTm4ICKNJ79Hq3DKWzxsK6dncehJMdZdLqpFOqLpWBw1WecO15
 ng+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=uBauo2l+v2JM8A0Hc4jqiJ1sPDazqxs66tAv+ODVBaI=;
 b=sBl9ok9BNID9GP5YrbKnG3DZNuZ25w0bnPfgq22PSCN9UcgJwep+Xhq6rXf0VxVs8v
 WoiIvdFVIfxBjr2graP5lqy+GzwjtcAc+fBiFP7S1Aa/1plpzYrrM6S5NsTj7/0PyvBl
 K/MnusYzl2I/z9lnu6NytX6a0oDbpZqHZ2Q2+KdUrEpFglKnUDF0k/U+mRz8+ojP2kzc
 yfwjMNh+s+e2SG3OW+J0+JMV+ODQGE/oX32DLo7IIx9NNkvuE5DnseXpg4f+uRhXvxuk
 KsQcLq2hugkj41fquWgo3Ae7fwkuy1Ho2Hm3/dnI4hR7gjGUBIFoDlQevBwp3C6IQqVT
 7hJQ==
X-Gm-Message-State: APjAAAVqTi9mEJupRWpe2c2PdPBVbOMS3uAGLYMbTsgDGeYAGACWWgjK
 XC/0Kw39GDHx+XhhGkRV5sw=
X-Google-Smtp-Source: APXvYqxnoHiWItkKHNHtrBFgtouEqIQLiwKm6gYGz777ZEIIzosHipsVVpjzzfIWIdMKqKyQ2YSLow==
X-Received: by 2002:a17:906:3149:: with SMTP id
 e9mr25798540eje.292.1577014556510; 
 Sun, 22 Dec 2019 03:35:56 -0800 (PST)
Received: from localhost ([46.6.13.33])
 by smtp.gmail.com with ESMTPSA id o88sm1693573eda.41.2019.12.22.03.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 03:35:55 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Douglas Anderson <dianders@chromium.org>, Sean Paul <seanpaul@chromium.org>
Subject: Re: RK3399 display flickering after kexec
Date: Sun, 22 Dec 2019 12:35:53 +0100
MIME-Version: 1.0
Message-ID: <f920475a-c163-49cc-bf4e-896c967b48d0@gmail.com>
In-Reply-To: <61cd89ec-e505-6a2b-d43f-da74850d1b95@collabora.com>
References: <934ab507-6501-455d-b3d6-3585d94d81f6@gmail.com>
 <61cd89ec-e505-6a2b-d43f-da74850d1b95@collabora.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_033601_355880_AC72CC2D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpZGF5LCBEZWNlbWJlciAyMCwgMjAxOSAxMDowODozMyBBTSBDRVQsIEVucmljIEJhbGxl
dGJvIGkgU2VycmEgd3JvdGU6Cj4gSGkgVmljZW7DpywKPgo+IE9uIDEyLzEyLzE5IDIzOjA0LCBW
aWNlbnRlIEJlcmdhcyB3cm90ZToKPj4gSGkgRW5yaWMsIERvdWdsYXMsIFNlYW4sCj4+IHRoZXJl
IGlzIGFuIGlzc3VlIG9uIFJLMzM5OS1iYXNlZCBwbGF0Zm9ybXMgd2l0aCBkaXNwbGF5IGZsaWNr
ZXJpbmcuCj4+IEkgaGF2ZSBzZWFyY2hlZCBtYWlsaW5nIGxpc3QgYW5kIGZvdW5kIHlvdSBoYXZl
IG1lbnRpb25lZCBvciB3ZXJlCj4+IGludm9sdmVkIGluIHJlbGF0ZWQgaXNzdWVzLCBzbywgeW91
IG1heSBiZSBhYmxlIHRvIGhlbHAuCj4+IAo+PiBUaGUgaXNzdWUgaGFzIGJlZW4gb2JzZXJ2ZWQg
b24gdGhlIFNhcHBoaXJlIGJvYXJkIGFuZCBvbiBnb29nbGUga2V2aW4sIC4uLgo+Cj4gVG8gYmUg
aG9uZXN0LCBJIGRvbid0IGhhdmUgaWRlYSwgbG9va3MgbGlrZSBzb21lIGNsb2NrIAo+IGNvbmZp
Z3VyYXRpb24gaXNzdWU/IERpZAo+IHlvdSBjaGVjayB0aGUgY2xvY2sgYWZ0ZXIgYW5kIGJlZm9y
ZT8gSSBtaWdodCBiZSBpbnRlcmVzdGVkIHRvIAo+IGxvb2sgYSBiaXQgbW9yZQo+IGludG8gdGhl
IGlzc3VlIGlmIHRoaXMgaXMgcmVwcm9kdWNpYmxlIHVzaW5nIHRoZSBjb3JlYm9vdCBib290bG9h
ZGVyLiBEbyB5b3UKPiBrbm93IGlmIHRoaXMgaGFwcGVucyB3aXRoIHN0b2NrIGJvb3Rsb2FkZXI/
CgpIaSBFbnJpYywKdGhhbmtzIGZvciByZXBseWluZy4KCkkgbmV2ZXIgdGVzdGVkIGtleGVjIHdp
dGggdGhlIHN0b2NrIGJvb3Rsb2FkZXIuCgpDb3JlYm9vdCBmcm9tIGJyYW5jaCBmaXJtd2FyZS1n
cnUtODc4NS5CIGF0Cmh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bW9z
L3RoaXJkX3BhcnR5L2NvcmVib290CndoaWNoIGlzIChpZiBpIGFtIG5vdCB3cm9uZykgdGhlIHZl
cnNpb24gdGhhdCBtYXRjaGVzIHRoZSBzdG9jayBib290bG9hZGVyLApkaWQgbm90IGJvb3QsIGRp
c3BsYXkgb2ZmIGFsbCB0aGUgdGltZSBmcm9tIHBvd2VyIG9uLiBUaGlzIHdhcyB0ZXN0ZWQgbG9u
Zwp0aW1lIGFnbyBhbmQgaSBkaWQgbm90IGluc2lzdCBtdWNoLgoKVGhlIGJvb3Rsb2FkZXIgaSBh
bSBjdXJyZW50bHkgdXNpbmcgY29uZmlndXJlcyBwb3dlciBzdXBwbGllcywgY2xvY2tzIGFuZApk
cmFtIGJhc2VkIG9mZiBmaXJtd2FyZS1ncnUtODc4NS5CCkFyZSBhbGwga2V2aW4tc3BlY2lmaWMg
Y2hhbmdlcyB0byBjb3JlYm9vdCB1cHN0cmVhbWVkPyBTaG91bGQgaSB1c2UKdXBzdHJlYW0gY29y
ZWJvb3QgYXMgcmVmZXJlbmNlPwoKQW55d2F5cywgaSB0aGluayB0aGF0IHRoZSBlYXJseSBib290
bG9hZGVyIHN0YWdlIGlzIG5vdCB0aGUgY2F1c2UgYmVjYXVzZQp0aGUgaXNzdWUgZG9lcyBub3Qg
c2hvdyB1cCBpbiBsaW51eCBiZWZvcmUga2V4ZWMuIE15IGlkZWEgaXMgdGhhdCB0aGUgZmlyc3QK
bGludXgsIHdoaWxlIGtleGVjJ2luZyBzaHV0cyBkb3duIHNvbWV0aGluZyBpdCBzaG91bGRuJ3Qs
IGxpa2UgYSBjbG9jaywgYW5kCnRoZSB0aGUgc2Vjb25kIGxpbnV4IGFmdGVyIGtleGVjIGhhcyB0
aGUgaXNzdWUgYmVjYXNlIGl0IGNhbid0IHJlaW5pdGl6bGl6ZQppdC4KU28sIHdoZW4geW91IHNh
eSAiRGlkIHlvdSBjaGVjayB0aGUgY2xvY2sgYWZ0ZXIgYW5kIGJlZm9yZT8iLCBob3cgZG8gaQpj
aGVjayBpdD8gd2hpY2ggY2xvY2s/CgpJIHRoaW5rIHRoZSBtaXNiZWhhdmluZyBibG9jayBoZXJl
IGlzIHRoZSBWT1AsIG1heWJlIGJlY2F1c2Ugb2YgYQptaXNjb25maWd1cmVkIGNsb2NrIGFzIHlv
dSBzYXksIGJ1dCBpIGFtIGxvc3QgaGVyZSBiZWNhdXNlIHRoZXJlIGlzIG5vCmRvY3VtZW50YXRp
b24gYWJvdXQgaXQuIFRoZSBUUk0gYXZhaWxhYmxlIG9uIHRoZSBJbnRlcm5ldCBkb2VzIG5vdApt
ZW50aW9uIChvciBqdXN0IGJyaWVmbHkpIGEgbG90IG9mIGJsb2NrcyBwb3RlbnRpYWxseSByZWxh
dGVkIHRvIHRoaXMgaXNzdWUKbGlrZSBWT1Agb3IgR1BVLgoKVGhhbmtzLAogIFZpY2Vuw6cuCgo+
IFRoYW5rcywKPiAgRW5yaWMKPgo+PiBSZWdhcmRzLAo+PiAgVmljZW7Dpy4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
