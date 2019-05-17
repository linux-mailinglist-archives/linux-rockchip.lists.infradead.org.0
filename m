Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5421DEE
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 21:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QGuQHe+u1wismp6DnyXXBjoFavz8SSLj0hFohLP10kU=; b=n/43JuOKymMTCLQuKubpoqyfoi
	s8w0g3wKB1KsWaJyLY7VQ2fDdJVAtzfNCn5PJKE6TeqZhoYMj+KL+u0eUODotykSOSZRO4sESLfRF
	rhkC/ptqfbohi91ULXDkqpBTlLPfZlCA2HvcHM0ReEv2ICrHPGxLYFjIYQCI+YR9xTH9w/a8ITMRF
	4OcwAziop+BXbCE8b6EHG1Z8jS1SnP5F2mdJqobWxmKRYQXiXbyJ1aaN5GQlxJRVlGhj685KNOeck
	T75UlJMM4zYhuU2nrxYRvoutzp3pvbeK1oCWzm7SyiGwKxZv8IGx8LJSCjeeZVtgu6USHcSvT1CwL
	oYnLXu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRi5F-0002hO-Mb; Fri, 17 May 2019 18:59:57 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRi5D-0002h3-Fu
 for linux-rockchip@lists.infradead.org; Fri, 17 May 2019 18:59:56 +0000
Received: by mail-wr1-x430.google.com with SMTP id f8so1803159wrt.1
 for <linux-rockchip@lists.infradead.org>; Fri, 17 May 2019 11:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=IILn9LdZKZd5ZE/3AdMJNZDfTMe+FYW+zi58vOtnBxU=;
 b=QbpxluyEeUyEVhtX05kSL1Ds9G4m4RUipUMhQrpOQUH3CSWPsOXNHPnRPA/N1Q3cM+
 +LAj1UVCxM5td4HalKyAhgHbuo9cyxs4fEuHOysRj7Ms0CnRKxdZ18Vvj9Nqp4nybuT1
 Qta/pAWo0W05Fwd6s82Emfk8Vqeokb60ZRADfvoBjzlb8sRKZDl6iVQTAfvl2a5rUSti
 VqRzf5LIvOHyeeaCxPv3Q+EjJSYZY674SfjDG8GNUCLCYMmRXHMDz4hr+8h0pM04qtmV
 uWTBHAVVdgG9yE9N4tJ9vo9c1/hvgknsvyJAIQ31Hy3dbxr+hN/X8OuOWe26LONjPGJi
 szww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=IILn9LdZKZd5ZE/3AdMJNZDfTMe+FYW+zi58vOtnBxU=;
 b=PMpS6NhLFPWlIkYWm26Ix0PUYlW7IFNAtYSZndHjHLRf4e5v5ttKK6OBdO6ZrCl/pc
 ugou9DmTns4374bXiDhuDT7MCJEGcI0sWtVbGEpMYEVyYAaE6Wsb5k8Lk3BQXa8fcDRH
 pyjZ2tICA0exAsbDbBdlfbmGoehe9q+KammonvUwuTQFHTsO3boahtCNmeeHGzLdi/AJ
 hoHJYxRPOAX2TDIbILLJmiei0RavJ3kSvV8u5F/wAfyjhf/ZB9crV5M9eYtO6jC88H7J
 2IcBHF+KAt1GHb71/aePit4XQWuivCjQRR9+Npit3kVjYBd10ItHPoK1BXroIy8CIRKV
 U/Kw==
X-Gm-Message-State: APjAAAVigHkD4Yy7nA7/OlxlQzqYtSwmFDLUa6BfP7blr/RDGyWFU2lx
 o7f0SWOLFZxELwp+LA+DAtdTS3Yj69M=
X-Google-Smtp-Source: APXvYqxOyMu0j55MBycn8JCb0dIDHSePqTqwwlMCUqOj0dqjHJ5Jq/Z1lJgK7YjdH3vu6JQ9Ov6YSA==
X-Received: by 2002:a05:6000:1203:: with SMTP id
 e3mr9524720wrx.300.1558119593432; 
 Fri, 17 May 2019 11:59:53 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id z74sm14565061wmc.2.2019.05.17.11.59.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 17 May 2019 11:59:52 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [regression] thermal: rockchip: temperature not reported
Date: Fri, 17 May 2019 20:59:51 +0200
MIME-Version: 1.0
Message-ID: <6d8575be-7531-43b8-b6f5-9d233f3138c5@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_115955_556503_3A04BC0B 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8sCgpjb21taXQgMjg2OTRlMDA5ZTUxMjQ1MWVhZDU1MTlkZDgwMWY5ODY5YWNiMWY2MAp0
aGVybWFsOiByb2NrY2hpcDogZml4IHVwIHRoZSB0c2FkYyBwaW5jdHJsIHNldHRpbmcgZXJyb3IK
CmJyb2tlIHRlbXBlcmF0dXJlIHJlYWRpbmdzLgpTaW5jZSB0aGlzIGNvbW1pdCB0aGUgdGVtcGVy
YXR1cmVzIGFyZSByZWFkIGFzIDAgYW5kIHRoZSBmYW4gaXMgYWx3YXlzIG9uLgpUZXN0ZWQgb24g
dGhlIFNhcHBoaXJlIGJvYXJkLCBhIFJLMzM5OSBwbGF0Zm9ybS4KClJlZ2FyZHMsCiAgVmljZW7D
py4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
