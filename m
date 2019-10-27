Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0DFE64D5
	for <lists+linux-rockchip@lfdr.de>; Sun, 27 Oct 2019 19:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75EQ6R6OmipcCsribDVAvBs132QA9IUeRFecLR83VP0=; b=LwDnQF6Yx/vF4F
	ZzZ4SLjQ/ztTQFqRfFrrR6RXcJSMeJiCmoT0kC2uurtybAWDvPaqB0i48ufakwyHlTw3dW2DveoXX
	qOOwWpPs4HAvj3SnReDOBffZdzGQhrWtZPprc6zPGEER2VtAKUIZv4N6VmxrtyKz/eC1XvuFu0pRd
	47uqIjtIzQbItIc3D1cXwdWtPpBq+LrlyzxiJgtLZlHP0KaoSxu2slriYO4h/g+tduTBQMzqwoonN
	9JbgVKtycBgKL0QspfUiVTar7qwQkolZHZYS9C1ZPmyUkwERis+MpV7XYLHxgzfL4KwepvqyppK9W
	qeCUxjqLdMn46X7+40Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBI-0001Ju-Hr; Sun, 27 Oct 2019 18:22:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBG-0001JL-5B; Sun, 27 Oct 2019 18:22:23 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBE-0008Ha-IL; Sun, 27 Oct 2019 19:22:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add px30 otp controller
Date: Sun, 27 Oct 2019 19:21:58 +0100
Message-ID: <10558180.LDrOcu2nhT@phil>
In-Reply-To: <20191023224113.3268-1-heiko@sntech.de>
References: <20191023224113.3268-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112222_348809_67CB73FA 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 24. Oktober 2019, 00:41:13 CET schrieb Heiko Stuebner:
> The px30 soc contains a controller for one-time-programmable memory,
> so add the necessary node for it and the fields defined in it by default.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
